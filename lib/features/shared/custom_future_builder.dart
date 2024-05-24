import 'package:flutter/material.dart';

class CustomFutureBuilder<T> extends StatelessWidget {
  const CustomFutureBuilder({
    super.key,
    required this.future,
    required this.dataBuilder,
    this.defaultWidget,
    this.errorMessage,
  });

  /// Receives a future that returns a user model
  /// when the future is resolved, the dataBuilder
  /// will be called with the user model as a parameter
  /// and the widget returned by the dataBuilder will be shown
  /// if the future is not resolved, the defaultWidget will be shown
  /// if the future has an error, the errorMessage will be shown
  /// if the errorMessage is not provided, a default error message will be shown
  final Future<T> Function() future;
  final Widget Function(T data) dataBuilder;
  final Widget? defaultWidget;
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: future(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return Center(
            child: Text(errorMessage ?? 'Error'),
          );
        }
        if (snapshot.hasData) {
          return dataBuilder(snapshot.data as T);
        }
        return defaultWidget ?? const CircularProgressIndicator();
      },
    );
  }
}
