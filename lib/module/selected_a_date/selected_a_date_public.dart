library selected_a_date;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'selected_a_date_view.dart';
part 'selected_a_date_model.dart';
part 'selected_a_date_state.dart';

Future showSelectADateBottomSheet(BuildContext context) {
  return showCupertinoModalPopup(
      context: context,
      builder: (_) {
        return _createSelectedADate();
      });

  // showModalBottomSheet(
  //   clipBehavior: Clip.hardEdge,
  //   isScrollControlled: true,
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.only(
  //       topRight: Radius.circular(30),
  //       topLeft: Radius.circular(30),
  //     ),
  //   ),
  //   context: context,
  //   builder: (_) => _createSelectedADate(),
  // );
}

ChangeNotifierProvider<_SelectedADateModel> _createSelectedADate() {
  return ChangeNotifierProvider<_SelectedADateModel>(
    create: (_) => _SelectedADateModel(),
    child: _SelectedADateView(),
  );
}
