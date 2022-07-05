import 'package:flutter/material.dart';

class SpecialistsInfo extends ChangeNotifier {
  final _data = {};
  String get imageUrl => _data['imageUrl'] ?? '';
  String get name => _data['name'] ?? '';
  String get major => _data['major'] ?? '';
  double get distance => _data['distance'] ?? 0.0;
  double get fee => _data['fee'] ?? 0.0;
  int get star => _data['star'] ?? 0;
  int get experience => _data['experience'] ?? 0;
  int get reviewCount => _data['reviewCount'] ?? 0;

  String get reviewCountDisplay => '$reviewCount Reviews';
  String get distanceDisplay => '$distance km';
  String get feeDisplay => '\$$fee';

  SpecialistsInfo.from(Map e) {
    _data.addAll(e);
  }
}
