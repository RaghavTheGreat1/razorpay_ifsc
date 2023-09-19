class IfscRazorpayException implements Exception {
  final String message;

  IfscRazorpayException(this.message);

  @override
  String toString() => "$runtimeType: message";
}
