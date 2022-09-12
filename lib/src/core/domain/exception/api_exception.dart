enum ApiClientExceptionType {
  network,
  unsynchronizedData,
  auth,
  noElement,
  other,
  serverError
}

class ApiClientException implements Exception {
  final ApiClientExceptionType type;

  ApiClientException(this.type);
}
