library add_pet_detail;

import 'package:flutter/material.dart';
import 'package:pet_adoption/module/module.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'add_pet_detail_view.dart';
part 'add_pet_detail_model.dart';
part 'add_pet_detail_state.dart';

ChangeNotifierProvider<_AddPetDetailModel> createAddPetDetail() {
  return ChangeNotifierProvider<_AddPetDetailModel>(
    create: (_) => _AddPetDetailModel(),
    child: _AddPetDetailView(),
  );
}
