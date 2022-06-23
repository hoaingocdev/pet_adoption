library welcome;

import 'package:flutter/material.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'welcome_view.dart';
part 'welcome_model.dart';
part 'welcome_state.dart';

ChangeNotifierProvider<_WelcomeModel> createWelcome() {
  return ChangeNotifierProvider<_WelcomeModel>(
    create: (_) => _WelcomeModel(),
    child: _WelcomeView(),
  );
}
