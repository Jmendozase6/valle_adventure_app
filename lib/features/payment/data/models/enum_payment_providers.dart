enum EnumPaymentProviders { google, apple }

extension PaymentProvidersExtension on EnumPaymentProviders {
  String get name {
    switch (this) {
      case EnumPaymentProviders.google:
        return 'google_pay';
      case EnumPaymentProviders.apple:
        return 'apple_pay';
    }
  }
}
