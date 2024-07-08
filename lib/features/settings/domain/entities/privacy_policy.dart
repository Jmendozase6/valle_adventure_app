import 'package:valle_adventure_app/features/settings/data/models/legal_model.dart';

class PrivacyPolicy {
  final String title;
  final String content;

  PrivacyPolicy({
    required this.title,
    required this.content,
  });

  factory PrivacyPolicy.fromModel(LegalModel model) => PrivacyPolicy(
        title: model.title,
        content: model.content,
      );

  factory PrivacyPolicy.empty() => PrivacyPolicy(
        title: '',
        content: '',
      );
}
