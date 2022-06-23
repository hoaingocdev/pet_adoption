library onboard;

import 'package:flutter/material.dart';
import 'package:pet_adoption/widget/tt_model_mixin.p.dart';
import 'package:provider/provider.dart';

part 'onboard_view.dart';
part 'onboard_model.dart';
part 'onboard_state.dart';

ChangeNotifierProvider<_OnboardModel> createOnboard() {
  return ChangeNotifierProvider<_OnboardModel>(
    create: (_) => _OnboardModel(),
    child: _OnboardView(),
  );
}
