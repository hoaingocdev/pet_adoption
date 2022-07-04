library my_pets;

import 'package:flutter/material.dart';
import 'package:pet_adoption/module/module.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'my_pets_view.dart';
part 'my_pets_model.dart';
part 'my_pets_state.dart';

ChangeNotifierProvider<_MyPetsModel> createMyPets() {
  return ChangeNotifierProvider<_MyPetsModel>(
    create: (_) => _MyPetsModel(),
    child: _MyPetsView(),
  );
}
