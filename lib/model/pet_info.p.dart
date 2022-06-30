import 'package:flutter/material.dart';

class PetInfo extends ChangeNotifier {
  final _data = {};
  String get namePet => _data['namePet'] ?? '';
  String get valueDisplay => namePet;

  PetInfo.from(Map e) {
    _data.addAll(e);
  }
}
