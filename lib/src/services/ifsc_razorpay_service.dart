import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ifsc_razorpay/src/exceptions/ifsc_razorpay_exceptions.dart';
import 'package:ifsc_razorpay/src/models/ifsc_details.dart';

class IfscRazorpay {
  late http.Client client;

  IfscRazorpay() {
    client = http.Client();
  }
  Future<IfscDetails> getBankDetails(String ifscCode) async {
    final uri = Uri.parse('https://ifsc.razorpay.com/$ifscCode');

    final res = await client.get(uri);
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);

      return IfscDetails.fromJson(json);
    } else {
      throw IfscRazorpayException(
        res.body,
      );
    }
  }
}
