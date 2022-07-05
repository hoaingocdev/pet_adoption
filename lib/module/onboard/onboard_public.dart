library onboard;

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:pet_adoption/module/module.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:pet_adoption/widget/widget.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

part 'onboard_view.dart';
part 'onboard_model.dart';
part 'onboard_state.dart';

ChangeNotifierProvider<_OnboardModel> createOnboard() {
  return ChangeNotifierProvider<_OnboardModel>(
    create: (_) => _OnboardModel(),
    child: _OnboardView(),
  );
}
