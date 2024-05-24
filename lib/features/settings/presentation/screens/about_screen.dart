import 'package:flutter/material.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text('AboutScreen'),
      ),
    );
  }
}
