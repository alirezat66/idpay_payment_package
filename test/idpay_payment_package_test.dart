import 'package:flutter_test/flutter_test.dart';
import 'package:idpay_payment_package/id_pay_response.dart';

import 'package:idpay_payment_package/idpay_payment_package.dart';
import 'package:idpay_payment_package/payment_request.dart';

void main() {
  group(
    'filter test',
    () {
      test('test payment for error', () async {
        PaymentRequest request = PaymentRequest(
            orderId: 2,
            paymentAmountRial: 10000,
            callBackUrl: 'ArmanCoders.com/payment',
            userFullName: 'Reza Taghizadeh',
            userPhone: '+905366526420',
            userMail: 'info@armancoders.com',
            paymentDescription: 'Just For Test');
        IdPayResponse response = await IdPayPayment.getIdPayResponse(
            request: request, apiKey: 'alireza');
        expect(response.statusCode, 403);
      });
    },
  );
}
