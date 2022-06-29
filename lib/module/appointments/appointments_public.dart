library appointments;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_adoption/model/appointment_info.p.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'appointments_view.dart';
part 'appointments_model.dart';
part 'appointments_state.dart';
part 'widgets/upcoming.p.dart';
part 'widgets/no_appoinntment.p.dart';
part 'widgets/past.p.dart';

ChangeNotifierProvider<_AppointmentsModel> createAppointments() {
  return ChangeNotifierProvider<_AppointmentsModel>(
    create: (_) => _AppointmentsModel(),
    child: _AppointmentsView(),
  );
}
