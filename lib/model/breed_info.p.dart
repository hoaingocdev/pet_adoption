import 'package:flutter/material.dart';

class BreedInfo extends ChangeNotifier {
  final _data = {};
  String get breedName => _data['breedName'] ?? '';

  String get valueDisplay => breedName;

  BreedInfo.from(Map e) {
    _data.addAll(e);
  }
}
