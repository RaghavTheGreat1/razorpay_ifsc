class RazorpayIfscException implements Exception {
  final String message;

  RazorpayIfscException(this.message);

  @override
  String toString() => "$runtimeType: message";
}
