library add_pet_detail_info;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_adoption/model/model.dart';
import 'package:pet_adoption/module/sign_in/sign_in_public.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:pet_adoption/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'add_pet_detail_info_view.dart';
part 'add_pet_detail_info_model.dart';
part 'add_pet_detail_info_state.dart';
part 'widget/ls_general_information.p.dart';
part 'widget/general_information.p.dart';

ChangeNotifierProvider<_AddPetDetailInfoModel> createAddPetDetailInfo() {
  return ChangeNotifierProvider<_AddPetDetailInfoModel>(
    create: (_) => _AddPetDetailInfoModel(),
    child: _AddPetDetailInfoView(),
  );
}
