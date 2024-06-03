import 'package:flutter/material.dart';

class RecoverCodeScreen extends StatelessWidget {
  const RecoverCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _RecoverCodeView(),
    );
  }
}

class _RecoverCodeView extends StatelessWidget {
  const _RecoverCodeView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hola Mundo'),
    );
  }
}
