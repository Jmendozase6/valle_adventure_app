import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final qtyPartnersProvider = StateProvider.autoDispose<int>((ref) => 0);
final dateBookProvider = StateProvider.autoDispose<String>((ref) => '');

final formPartnersKeyProvider = Provider<GlobalKey<FormState>>((ref) => GlobalKey<FormState>());
