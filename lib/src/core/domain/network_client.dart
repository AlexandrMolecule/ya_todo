import 'dart:convert';
import 'dart:io';

import 'package:y_todo/src/core/configuration/configuration.dart';
import 'package:y_todo/src/core/domain/exception/api_exception.dart';
import 'package:y_todo/src/core/domain/http_client.dart';

abstract class INetworkClient {
  Future<T> get<T>(
    String path,
    T Function(dynamic json) parser, [
    Map<String, dynamic>? parameters,
  ]);

  Future<T> post<T>(
    String path,
    Map<String, dynamic> bodyParameters,
    T Function(dynamic json) parser, [
    Map<String, dynamic>? urlParameters,
    Map<String, dynamic>? customHeader,
  ]);

  Future<T> patch<T>(
    String path,
    Map<String, dynamic> bodyParameters,
    T Function(dynamic json) parser, [
    Map<String, dynamic>? urlParameters,
    Map<String, dynamic>? customHeader,
  ]);

  Future<T> put<T>(
    String path,
    Map<String, dynamic> bodyParameters,
    T Function(dynamic json) parser, [
    Map<String, dynamic>? urlParameters,
    Map<String, dynamic>? customHeader,
  ]);

  Future<T> delete<T>(
    String path,
    T Function(dynamic json) parser, [
    Map<String, dynamic>? parameters,
    Map<String, dynamic>? customHeader,
  ]);
}

class NetworkClientImpl implements INetworkClient {
  final IAppHttpClient client;

  const NetworkClientImpl(this.client);

  Uri _makeUri(String path, [Map<String, dynamic>? parameters]) {
    final uri = Uri.parse('${NetworkConfiguration.host}$path');
    if (parameters != null) {
      return uri.replace(queryParameters: parameters);
    } else {
      return uri;
    }
  }

  @override
  Future<T> get<T>(
    String path,
    T Function(dynamic json) parser, [
    Map<String, dynamic>? parameters,
  ]) async {
    final url = _makeUri(path, parameters);
    try {
      final request = await client.getUrl(url);
      final response = await request.close();
      final dynamic json = await response.jsonDecode();
      _validateResponse(response, json);
      final result = parser(json);
      return result;
    } on SocketException {
      throw ApiClientException(ApiClientExceptionType.network);
    } on ApiClientException {
      rethrow;
    }
  }

  @override
  Future<T> post<T>(
    String path,
    Map<String, dynamic> bodyParameters,
    T Function(dynamic json) parser, [
    Map<String, dynamic>? urlParameters,
    Map<String, dynamic>? customHeader,
  ]) async {
    try {
      final url = _makeUri(path, urlParameters);
      final request = await client.postUrl(url);
      request.headers.contentType = ContentType.json;
      if (customHeader != null && customHeader.isNotEmpty) {
        request.headers
            .add(customHeader.keys.first, customHeader.values.first as Object);
      }

      request.write(jsonEncode(bodyParameters));
      final response = await request.close();
      final dynamic json = await response.jsonDecode();
      _validateResponse(response, json);

      final result = parser(json);
      return result;
    } on SocketException {
      throw ApiClientException(ApiClientExceptionType.network);
    } on ApiClientException {
      rethrow;
    } on Object catch (_) {
      throw ApiClientException(ApiClientExceptionType.other);
    }
  }

  @override
  Future<T> patch<T>(
    String path,
    Map<String, dynamic> bodyParameters,
    T Function(dynamic json) parser, [
    Map<String, dynamic>? urlParameters,
    Map<String, dynamic>? customHeader,
  ]) async {
    try {
      final url = _makeUri(path, urlParameters);
      final request = await client.patchUrl(url);

      request.headers.contentType = ContentType.json;
      if (customHeader != null && customHeader.isNotEmpty) {
        request.headers
            .add(customHeader.keys.first, customHeader.values.first as Object);
      }

      request.write(jsonEncode(bodyParameters));
      final response = await request.close();
      final dynamic json = await response.jsonDecode();
      _validateResponse(response, json);

      final result = parser(json);
      return result;
    } on SocketException {
      throw ApiClientException(ApiClientExceptionType.network);
    } on ApiClientException {
      rethrow;
    } on Object catch (_) {
      throw ApiClientException(ApiClientExceptionType.other);
    }
  }

  @override
  Future<T> delete<T>(
    String path,
    T Function(dynamic json) parser, [
    Map<String, dynamic>? parameters,
    Map<String, dynamic>? customHeader,
  ]) async {
    final url = _makeUri(path, parameters);
    try {
      final request = await client.deleteUrl(url);

      if (customHeader != null && customHeader.isNotEmpty) {
        request.headers
            .add(customHeader.keys.first, customHeader.values.first as Object);
      }
      final response = await request.close();
      final dynamic json = await response.jsonDecode();
      _validateResponse(response, json);
      final result = parser(json);
      return result;
    } on SocketException {
      throw ApiClientException(ApiClientExceptionType.network);
    } on ApiClientException {
      rethrow;
    }
  }

  @override
  Future<T> put<T>(
    String path,
    Map<String, dynamic> bodyParameters,
    T Function(dynamic json) parser, [
    Map<String, dynamic>? urlParameters,
    Map<String, dynamic>? customHeader,
  ]) async {
    try {
      final url = _makeUri(path, urlParameters);
      final request = await client.putUrl(url);
      request.headers.contentType = ContentType.json;
      if (customHeader != null && customHeader.isNotEmpty) {
        request.headers
            .add(customHeader.keys.first, customHeader.values.first as Object);
      }

      request.write(jsonEncode(bodyParameters));
      final response = await request.close();
      final dynamic json = await response.jsonDecode();
      _validateResponse(response, json);

      final result = parser(json);
      return result;
    } on SocketException {
      throw ApiClientException(ApiClientExceptionType.network);
    } on ApiClientException {
      rethrow;
    } on Object catch (_) {
      throw ApiClientException(ApiClientExceptionType.other);
    }
  }

  void _validateResponse(HttpClientResponse response, dynamic json) {
    final code = response.statusCode;
    if (code == 200 || code == 201) {
      return;
    }
    if (code == 401) {
      throw ApiClientException(ApiClientExceptionType.auth);
    } else if (code == 400) {
      throw ApiClientException(ApiClientExceptionType.unsynchronizedData);
    } else if (code == 404) {
      throw ApiClientException(ApiClientExceptionType.noElement);
    } else if (code == 502) {
      throw ApiClientException(ApiClientExceptionType.serverError);
    } else {
      throw ApiClientException(ApiClientExceptionType.other);
    }
  }
}

extension HttpClientResponseJsonDecode on HttpClientResponse {
  Future<dynamic> jsonDecode() async {
    return transform(utf8.decoder).asBroadcastStream().toList().then((value) {
      final result = value.join();
      return result;
    }).then<dynamic>((v) {
      if (v.isNotEmpty && v[0] == '{') {
        return json.decode(v);
      } else {
        return v;
      }
    });
  }
}
