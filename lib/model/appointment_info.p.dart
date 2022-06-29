import 'package:flutter/material.dart';

class AppointmentInfo extends ChangeNotifier {
  final _data = {};

  String get imageUrl => _data['imageUrl'] ?? '';
  String get name => _data['name'] ?? '';
  String get major => _data['major'] ?? '';
  String get clinic => _data['clinic'] ?? '';
  String get address => _data['address'] ?? '';
  String get time => _data['time'] ?? '';
  double get distance => _data['distance'] ?? 0.0;
  double get fee => _data['fee'] ?? 0.0;
  int get star => _data['star'] ?? 0;
  int get reviewCount => _data['reviewCount'] ?? 0;

  AppointmentInfo.from(Map e) {
    _data.addAll(e);
  }
}
