import 'package:flutter/material.dart';
import 'package:pet_adoption/model/model.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:pet_adoption/widget/widget.dart';

class TTGenderButton extends StatelessWidget {
  final PetInfo value;
  const TTGenderButton({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consum<PetInfo>(
        value: value,
        builder: (context, petInfo) {
          return Row(
            children: [
              Expanded(
                child: buildGender(
                  isSelected: petInfo.isMale,
                  asset: Id.ic_male,
                  text: 'Male',
                  onPressed: () => petInfo.setGender(GenderEnum.male),
                  assetColor: petInfo.isMale ? Cl.white : Cl.violet,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: buildGender(
                  isSelected: petInfo.isFemale,
                  text: 'Female',
                  asset: Id.ic_female,
                  assetColor: petInfo.isFemale ? Cl.white : null,
                  onPressed: () => petInfo.setGender(GenderEnum.female),
                ),
              )
            ],
          );
        });
  }

  Widget buildGender({
    required String text,
    required String asset,
    Color? assetColor,
    bool isSelected = false,
    VoidCallback? onPressed,
  }) {
    final item = builItemButton(
      imageAsset: asset,
      assetColor: assetColor,
      text: text,
      bodyColor: isSelected ? Cl.white : Cl.black,
    );
    if (isSelected) {
      return TTButton.shadow(
        onPressed: onPressed,
        backgroundColor: Cl.violet,
        height: 32,
        child: item,
      );
    }
    return TTButton(
      onPressed: onPressed,
      borderColor: Cl.grey,
      height: 32,
      child: item,
    );
  }

  Widget builItemButton({
    required String imageAsset,
    required String text,
    Color? bodyColor,
    Color? assetColor,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageAsset,
          color: assetColor,
        ),
        Text(
          text,
          style: St.body13600.copyWith(color: bodyColor),
        )
      ],
    );
  }
}
