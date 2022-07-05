library results_near_me;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_adoption/model/model.dart';
import 'package:pet_adoption/module/module.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'results_near_me_view.dart';
part 'results_near_me_model.dart';
part 'results_near_me_state.dart';
part 'widget/specialists.p.dart';

ChangeNotifierProvider<_ResultsNearMeModel> createResultsNearMe() {
  return ChangeNotifierProvider<_ResultsNearMeModel>(
    create: (_) => _ResultsNearMeModel(),
    child: _ResultsNearMeView(),
  );
}
