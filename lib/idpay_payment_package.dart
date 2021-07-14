library idpay_payment_package;

import 'dart:convert';

import 'package:http/http.dart';
import 'package:idpay_payment_package/id_pay_response.dart';
import 'package:idpay_payment_package/payment_request.dart';

/// A Calculator.
class IdPayPayment {
  static Future<IdPayResponse> getIdPayResponse(
      {required PaymentRequest request,
      required String apiKey,
      bool isSandbox = false}) async {
    try {
      String endPoint = 'https://api.idpay.ir/v1.1/payment';
      print(endPoint);
      var client = new Client();

      print(request.toJson().toString());
      Uri finalUri = Uri.parse(endPoint);
      final response = await client.post(finalUri,
          headers: {
            "X-API-KEY": apiKey,
            "X-SANDBOX": isSandbox ? '1' : '0',
            "Content-type": "application/json",
          },
          body: json.encode(request.toJson()));
      if (response.statusCode == 201) {
        var jsonResponse = json.decode(response.body);
        var idPayResponse = IdPayResponse(jsonResponse['link'], '', 201);
        return idPayResponse;
      } else {
        var jsonResponse = json.decode(response.body);
        return IdPayResponse(
            '', jsonResponse['error_message'], response.statusCode);
      }
    } catch (e) {
      print(e.toString());
      return IdPayResponse('', 'خطای نا مشخص', 400);
    }
  }
}
