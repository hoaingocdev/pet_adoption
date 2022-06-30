import 'package:flutter/material.dart';

class SizeInfo extends ChangeNotifier {
  final _data = {};

  String get sizePet => _data['sizePet'] ?? '';

  String get valueDisplay => sizePet;

  SizeInfo.from(Map e) {
    _data.addAll(e);
  }
}
