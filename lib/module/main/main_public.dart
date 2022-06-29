library main;

import 'package:flutter/material.dart';
import 'package:pet_adoption/module/module.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'main_view.dart';
part 'main_model.dart';
part 'main_state.dart';

ChangeNotifierProvider<_MainModel> createMain() {
  return ChangeNotifierProvider<_MainModel>(
    create: (_) => _MainModel(),
    child: _MainView(),
  );
}
