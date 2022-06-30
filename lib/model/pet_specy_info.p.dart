import 'package:flutter/material.dart';

class PetSpecyInfo extends ChangeNotifier {
  final _data = {};

  String get namePet => _data['namePet'] ?? '';
  String get valueDisplay => namePet;

  PetSpecyInfo.from(Map e) {
    _data.addAll(e);
  }
}
