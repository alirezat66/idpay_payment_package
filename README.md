# idpay_payment_package
[![pub package](https://img.shields.io/pub/v/rounded_loading_button.svg)](https://pub.dev/packages/easy_animated_tabbar)
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://pub.dev/packages/effective_dart)

A package for making payment with id pay easy

## For getting the package you should add:
```
idpay_payment_package: 0.0.1
```
## Getting Started With Making A Payment Request:
```
PaymentRequest request = PaymentRequest(
            orderId: 2,
            paymentAmountRial: 10000,
            callBackUrl: 'ArmanCoders.com/payment',
            userFullName: 'Reza Taghizadeh',
            userPhone: '+905366526420',
            userMail: 'info@armancoders.com',
            paymentDescription: 'Just For Test');
```
## In the second step you can easily add your payment with:

```
 IdPayResponse response = await IdPayPayment.getIdPayResponse(
            request: request, apiKey: '6a7f99eb-7c20-4412-a972-6dfb7cd253a4');
```

## You can using payment in test environment by using :
* boolean isSandbox : true . the defualt value is false

```
 IdPayResponse response = await IdPayPayment.getIdPayResponse(
            request: request, apiKey: '6a7f99eb-7c20-4412-a972-6dfb7cd253a4',isSandbox: false);
```

## At the end your response is containe:

* String paymentLink// is '' if has error
* String error // if not exist is ''
* int statusCode // is 201 if has no error



