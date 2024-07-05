class Payment {
  String? id;
  String bookingId;
  String userId;
  String status;
  double total;
  String invoiceType;
  String provider;
  String paymentDescription;
  String cardNetwork;
  String cardDetails;
  String paymentToken;
  String billingAddressId;

  Payment({
    this.id,
    required this.bookingId,
    required this.userId,
    required this.status,
    required this.total,
    required this.invoiceType,
    required this.provider,
    required this.paymentDescription,
    required this.cardNetwork,
    required this.cardDetails,
    required this.paymentToken,
    required this.billingAddressId,
  });

  Payment copyWith({
    String? id,
    String? bookingId,
    String? userId,
    String? status,
    double? total,
    String? invoiceType,
    String? provider,
    String? paymentDescription,
    String? cardNetwork,
    String? cardDetails,
    String? paymentToken,
    String? billingAddressId,
  }) {
    return Payment(
      id: id ?? this.id,
      bookingId: bookingId ?? this.bookingId,
      userId: userId ?? this.userId,
      status: status ?? this.status,
      total: total ?? this.total,
      invoiceType: invoiceType ?? this.invoiceType,
      provider: provider ?? this.provider,
      paymentDescription: paymentDescription ?? this.paymentDescription,
      cardNetwork: cardNetwork ?? this.cardNetwork,
      cardDetails: cardDetails ?? this.cardDetails,
      paymentToken: paymentToken ?? this.paymentToken,
      billingAddressId: billingAddressId ?? this.billingAddressId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'booking_id': bookingId,
      'user_id': userId,
      'status': status,
      'total': total,
      'invoice_type': invoiceType,
      'provider': provider,
      'payment_description': paymentDescription,
      'card_network': cardNetwork,
      'card_details': cardDetails,
      'payment_token': paymentToken,
      'billing_address_id': billingAddressId,
    };
  }
}
