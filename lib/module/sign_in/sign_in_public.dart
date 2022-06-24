library sign_in;

import 'package:flutter/material.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'sign_in_view.dart';
part 'sign_in_model.dart';
part 'sign_in_state.dart';

ChangeNotifierProvider<_SignInModel> createSignIn() {
  return ChangeNotifierProvider<_SignInModel>(
    create: (_) => _SignInModel(),
    child: _SignInView(),
  );
}
