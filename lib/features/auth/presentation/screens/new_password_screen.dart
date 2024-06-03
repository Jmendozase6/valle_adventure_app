import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _NewPasswordView(),
    );
  }
}

class _NewPasswordView extends StatelessWidget {
  const _NewPasswordView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hola Mundo'),
    );
  }
}
