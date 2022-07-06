import 'package:flutter/material.dart';

class AddressInfo extends ChangeNotifier {
  final _data = {};
  String get address => _data['addess'] ?? '';

  AddressInfo.from(Map e) {
    _data.addAll(e);
  }
}
