import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecoverPasswordScreen extends StatelessWidget {
  const RecoverPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _RecoverPasswordView(),
    );
  }
}

class _RecoverPasswordView extends ConsumerWidget {
  const _RecoverPasswordView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [],
    );
  }
}
