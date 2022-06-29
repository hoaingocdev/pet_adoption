library add_pet_detail_info;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'add_pet_detail_info_view.dart';
part 'add_pet_detail_info_model.dart';
part 'add_pet_detail_info_state.dart';

ChangeNotifierProvider<_AddPetDetailInfoModel> createAddPetDetailInfo() {
  return ChangeNotifierProvider<_AddPetDetailInfoModel>(
    create: (_) => _AddPetDetailInfoModel(),
    child: _AddPetDetailInfoView(),
  );
}
