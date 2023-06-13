final class Failure {
  final int errorCode;
  final String message;

  Failure({required this.errorCode, required this.message});

  @override
  String toString() {
    return 'ErrorCode: $errorCode' + 'Message: $message';
  }
}
