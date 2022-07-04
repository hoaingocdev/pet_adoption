library edit_profile;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_adoption/model/model.dart';
import 'package:pet_adoption/module/sign_in/sign_in_public.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:pet_adoption/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'edit_profile_view.dart';
part 'edit_profile_model.dart';
part 'edit_profile_state.dart';

ChangeNotifierProvider<_EditProfileModel> createEditProfile() {
  return ChangeNotifierProvider<_EditProfileModel>(
    create: (_) => _EditProfileModel(),
    child: _EditProfileView(),
  );
}
