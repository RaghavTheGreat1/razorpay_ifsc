import 'package:razorpay_ifsc/razorpay_ifsc.dart';
import 'package:test/test.dart';

void main() {
  test('Razorpay IFSC Test', () async {
    final ifscRazorpay = RazorpayIfsc();

    final bankDetails = await ifscRazorpay.getBankDetails("KKBK0008077");

    expect(bankDetails.bank, "Kotak Mahindra Bank");
  });
}
