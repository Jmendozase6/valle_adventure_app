import 'package:valle_adventure_app/features/settings/data/models/legal_model.dart';

class TermsConditions {
  final String title;
  final String content;

  TermsConditions({required this.title, required this.content});

  factory TermsConditions.fromModel(LegalModel model) => TermsConditions(
        title: model.title,
        content: model.content,
      );

  factory TermsConditions.empty() => TermsConditions(
        title: '',
        content: '',
      );
}
