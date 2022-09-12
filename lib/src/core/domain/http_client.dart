import 'dart:io';

abstract class IAppHttpClient {
  Future<HttpClientRequest> getUrl(Uri url);
  Future<HttpClientRequest> postUrl(Uri url);
  Future<HttpClientRequest> patchUrl(Uri url);
  Future<HttpClientRequest> putUrl(Uri url);
  Future<HttpClientRequest> deleteUrl(Uri url);
}

class AppHttpClientImpl implements IAppHttpClient {
  final _client = HttpClient();

  @override
  Future<HttpClientRequest> getUrl(Uri url) => _client.getUrl(url);

  @override
  Future<HttpClientRequest> postUrl(Uri url) => _client.postUrl(url);

  @override
  Future<HttpClientRequest> patchUrl(Uri url) => _client.patchUrl(url);

  @override
  Future<HttpClientRequest> putUrl(Uri url) => _client.putUrl(url);

  @override
  Future<HttpClientRequest> deleteUrl(Uri url) => _client.deleteUrl(url);
}
