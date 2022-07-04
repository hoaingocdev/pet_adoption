library results_near_me;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'results_near_me_view.dart';
part 'results_near_me_model.dart';
part 'results_near_me_state.dart';

ChangeNotifierProvider<_ResultsNearMeModel> createResultsNearMe() {
  return ChangeNotifierProvider<_ResultsNearMeModel>(
    create: (_) => _ResultsNearMeModel(),
    child: _ResultsNearMeView(),
  );
}
