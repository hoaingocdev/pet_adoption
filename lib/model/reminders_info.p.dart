import 'package:flutter/material.dart';

class RemindersInfo extends ChangeNotifier {
  final _data = {};
  String get typeVaccine => _data['typeVaccine'] ?? '';
  String get vaccinationTime => _data['vaccinationTime'] ?? '';

  RemindersInfo.from(Map e) {
    _data.addAll(e);
  }
}
