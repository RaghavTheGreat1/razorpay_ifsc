import 'package:flutter_test/flutter_test.dart';
import 'package:ifsc_razorpay/src/services/ifsc_razorpay_service.dart';

void main() {
  test('Razorpay IFSC Test', () async {
    final details = await IfscRazorpay().getBankDetails("HDFC0004474");
    expect(details.bank, "HDFC Bank");
  });
}
