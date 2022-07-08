import 'package:flutter/material.dart';

class ReviewInfo extends ChangeNotifier {
  final _data = {};
  String get name => _data['name'] ?? '';
  int get star => _data['star'] ?? 0;
  String get review => _data['review'] ?? '';
  String get imageUrl => _data['imageUrl'] ?? '';

  ReviewInfo.from(Map e) {
    _data.addAll(e);
  }
}
