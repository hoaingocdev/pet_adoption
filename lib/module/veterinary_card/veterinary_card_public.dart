library veterinary_card;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'veterinary_card_view.dart';
part 'veterinary_card_model.dart';
part 'veterinary_card_state.dart';

ChangeNotifierProvider<_VeterinaryCardModel> createVeterinaryCard() {
  return ChangeNotifierProvider<_VeterinaryCardModel>(
    create: (_) => _VeterinaryCardModel(),
    child: _VeterinaryCardView(),
  );
}
