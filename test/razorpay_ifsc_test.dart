import 'package:flutter_test/flutter_test.dart';
import 'package:razorpay_ifsc/razorpay_ifsc.dart';

void main() {
  test('Razorpay IFSC Test', () async {
    final ifscRazorpay = IfscRazorpay();

    final bankDetails = await ifscRazorpay.getBankDetails("KKBK0008077");

    expect(bankDetails.bank, "Kotak Mahindra Bank");
  });
}
