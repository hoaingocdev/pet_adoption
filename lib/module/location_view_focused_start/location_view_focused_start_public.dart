library location_view_focused_start;

import 'package:flutter/material.dart';
import 'package:pet_adoption/model/model.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'location_view_focused_start_view.dart';
part 'location_view_focused_start_model.dart';
part 'location_view_focused_start_state.dart';

ChangeNotifierProvider<_LocationViewFocusedStartModel> createLocationViewFocusedStart() {
  return ChangeNotifierProvider<_LocationViewFocusedStartModel>(
    create: (_) => _LocationViewFocusedStartModel(),
    child: _LocationViewFocusedStartView(),
  );
}
