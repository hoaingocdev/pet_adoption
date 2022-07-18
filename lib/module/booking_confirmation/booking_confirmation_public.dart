library booking_confirmation;

import 'package:flutter/material.dart';
import 'package:pet_adoption/model/model.dart';
import 'package:pet_adoption/module/thank_you/thank_you_public.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:pet_adoption/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'booking_confirmation_view.dart';
part 'booking_confirmation_model.dart';
part 'booking_confirmation_state.dart';

Future showBookingBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    clipBehavior: Clip.hardEdge,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
      ),
    ),
    context: context,
    builder: (_) => _createBookingConfirmation(),
  );
}

ChangeNotifierProvider<_BookingConfirmationModel> _createBookingConfirmation() {
  return ChangeNotifierProvider<_BookingConfirmationModel>(
    create: (_) => _BookingConfirmationModel(),
    child: _BookingConfirmationView(),
  );
}
