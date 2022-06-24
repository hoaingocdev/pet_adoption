library registration;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'registration_view.dart';
part 'registration_model.dart';
part 'registration_state.dart';

ChangeNotifierProvider<_RegistrationModel> createRegistration() {
  return ChangeNotifierProvider<_RegistrationModel>(
    create: (_) => _RegistrationModel(),
    child: _RegistrationView(),
  );
}
