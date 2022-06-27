library main_content;

import 'package:flutter/material.dart';
import 'package:pet_adoption/config/model/category_info.p.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'main_content_view.dart';
part 'main_content_model.dart';
part 'main_content_state.dart';

ChangeNotifierProvider<_MainContentModel> createMainContent() {
  return ChangeNotifierProvider<_MainContentModel>(
    create: (_) => _MainContentModel(),
    child: _MainContentView(),
  );
}
