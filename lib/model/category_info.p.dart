import 'package:flutter/material.dart';

class CaterogyInfo extends ChangeNotifier {
  final _data = {};
  String get imageUrl => _data['imageUrl'] ?? '';
  String get name => _data['name'] ?? '';
  CaterogyInfo.from(Map e) {
    _data.addAll(e);
  }
}
