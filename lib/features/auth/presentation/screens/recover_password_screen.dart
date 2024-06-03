import 'package:flutter/material.dart';

class RecoverPasswordScreen extends StatelessWidget {
  const RecoverPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _RecoverPasswordView(),
    );
  }
}

class _RecoverPasswordView extends StatelessWidget {
  const _RecoverPasswordView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hola Mundo'),
    );
  }
}
