library sign_in;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_adoption/module/module.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:pet_adoption/utils/validator.p.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'sign_in_view.dart';
part 'sign_in_model.dart';
part 'sign_in_state.dart';
part '../../widget/auth_textfield.dart';

ChangeNotifierProvider<_SignInModel> createSignIn() {
  return ChangeNotifierProvider<_SignInModel>(
    create: (_) => _SignInModel(),
    child: _SignInView(),
  );
}
