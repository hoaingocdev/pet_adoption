library main_content;

import 'package:flutter/material.dart';
import 'package:pet_adoption/model/category_info.p.dart';
import 'package:pet_adoption/module/module.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'main_content_view.dart';
part 'main_content_model.dart';
part 'main_content_state.dart';

Future showAddPetDetailBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    clipBehavior: Clip.hardEdge,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15),
        topLeft: Radius.circular(15),
      ),
    ),
    context: context,
    builder: (_) => createAddPetDetail(),
  );
}

ChangeNotifierProvider<_MainContentModel> createMainContent() {
  return ChangeNotifierProvider<_MainContentModel>(
    create: (_) => _MainContentModel(),
    child: _MainContentView(),
  );
}
