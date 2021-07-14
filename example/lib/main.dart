import 'package:flutter/material.dart';
import 'package:idpay_payment_package/id_pay_response.dart';
import 'package:idpay_payment_package/idpay_payment_package.dart';
import 'package:idpay_payment_package/payment_request.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () async {
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
                },
                child: Text("payment test"))
          ],
        ),
      ),
    );
  }
}
