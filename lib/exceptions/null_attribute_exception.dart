class NullAttributeException implements Exception {
  String _exceptionMessage;

  NullAttributeException(String attribute)
      : assert(attribute != null, throw NullAttributeException('attribute')) {
    _exceptionMessage = '$attribute attribute cannot be null';
  }

  @override
  String toString() {
    return _exceptionMessage;
  }
}
