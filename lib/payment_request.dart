class PaymentRequest {
  int orderId;
  int paymentAmountRial;
  String userFullName;
  String userPhone;
  String userMail;
  String paymentDescription;
  String callBackUrl;

  PaymentRequest(
      {required this.orderId,
      required this.paymentAmountRial,
      this.userFullName = '',
      this.userPhone = '',
      this.userMail = '',
      this.paymentDescription = '',
      required this.callBackUrl});
  Map<String, dynamic> toJson() {
    return {
      "order_id": orderId,
      "amount": paymentAmountRial * 10,
      "name": userFullName,
      "phone": userPhone,
      "mail": userMail,
      "desc": paymentDescription,
      "callback": callBackUrl
    };
  }
}
