library thank_you;

import 'package:flutter/material.dart';
import 'package:pet_adoption/module/appointments/appointments_public.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'thank_you_view.dart';
part 'thank_you_model.dart';
part 'thank_you_state.dart';

ChangeNotifierProvider<_ThankYouModel> createThankYou() {
  return ChangeNotifierProvider<_ThankYouModel>(
    create: (_) => _ThankYouModel(),
    child: _ThankYouView(),
  );
}
