library appointments;

import 'package:flutter/material.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'appointments_view.dart';
part 'appointments_model.dart';
part 'appointments_state.dart';

ChangeNotifierProvider<_AppointmentsModel> createAppointments() {
  return ChangeNotifierProvider<_AppointmentsModel>(
    create: (_) => _AppointmentsModel(),
    child: _AppointmentsView(),
  );
}
