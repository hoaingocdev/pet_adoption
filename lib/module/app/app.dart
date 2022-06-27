import 'package:flutter/material.dart';
import 'package:pet_adoption/module/module.dart';

class PetAdoption extends StatelessWidget {
  const PetAdoption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: createMain(),
    );
  }
}
