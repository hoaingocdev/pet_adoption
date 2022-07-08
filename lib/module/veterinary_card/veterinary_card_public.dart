library veterinary_card;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_adoption/model/model.dart';
import 'package:pet_adoption/module/module.dart';
import 'package:pet_adoption/module/results_near_me/results_near_me_public.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:pet_adoption/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:pet_adoption/widget/widget.dart';

part 'veterinary_card_view.dart';
part 'veterinary_card_model.dart';
part 'veterinary_card_state.dart';
part 'widget/veterinary_card_top.p.dart';
part 'widget/calendar_box.p.dart';
part 'widget/location.p.dart';
part 'widget/used_info.p.dart';
part 'widget/reviews.p.dart';
part 'widget/nearby_vet.p.dart';

ChangeNotifierProvider<_VeterinaryCardModel> createVeterinaryCard() {
  return ChangeNotifierProvider<_VeterinaryCardModel>(
    create: (_) => _VeterinaryCardModel(),
    child: _VeterinaryCardView(),
  );
}
