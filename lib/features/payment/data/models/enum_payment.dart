enum PaymentProviders { google, apple }

extension PaymentProvidersExtension on PaymentProviders {
  String get name {
    switch (this) {
      case PaymentProviders.google:
        return 'google_pay';
      case PaymentProviders.apple:
        return 'apple_pay';
    }
  }
}
