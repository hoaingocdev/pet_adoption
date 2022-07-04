library select_a_speciality;

import 'package:flutter/material.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'select_a_speciality_view.dart';
part 'select_a_speciality_model.dart';
part 'select_a_speciality_state.dart';

Future showSelectASpecialityBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    clipBehavior: Clip.hardEdge,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
      ),
    ),
    context: context,
    builder: (_) => _createSelectASpeciality(),
  );
}

ChangeNotifierProvider<_SelectASpecialityModel> _createSelectASpeciality() {
  return ChangeNotifierProvider<_SelectASpecialityModel>(
    create: (_) => _SelectASpecialityModel(),
    child: _SelectASpecialityView(),
  );
}
