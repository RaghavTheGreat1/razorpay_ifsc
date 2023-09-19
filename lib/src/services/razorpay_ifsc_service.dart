import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:razorpay_ifsc/src/exceptions/razorpay_ifsc_exceptions.dart';
import 'package:razorpay_ifsc/src/models/bank_details.dart';

class RazorpayIfsc {
  late http.Client client;

  RazorpayIfsc() {
    client = http.Client();
  }
  Future<BankDetails> getBankDetails(String ifscCode) async {
    ifscCode = ifscCode.toUpperCase();
    final uri = Uri.parse('https://ifsc.razorpay.com/$ifscCode');

    final res = await client.get(uri);
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return BankDetails.fromJson(json);
    } else {
      throw RazorpayIfscException(
        res.body,
      );
    }
  }
}
