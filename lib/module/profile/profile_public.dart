library profile;

import 'package:flutter/material.dart';
import 'package:pet_adoption/module/module.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'profile_view.dart';
part 'profile_model.dart';
part '../main_content/profile_state.dart';

ChangeNotifierProvider<_ProfileModel> createProfile() {
  return ChangeNotifierProvider<_ProfileModel>(
    create: (_) => _ProfileModel(),
    child: _ProfileView(),
  );
}
