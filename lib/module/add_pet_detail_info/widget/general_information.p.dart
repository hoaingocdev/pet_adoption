part of add_pet_detail_info;

class GeneralInformation extends StatelessWidget {
  const GeneralInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_AddPetDetailInfoModel>();

    return Column(
      children: [
        Text(
          'General information',
          style: St.body18700.copyWith(color: Cl.black),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        const AuthTextField(labelText: 'Pet’s name'),
        const SizedBox(height: 20),
        LsGeneralInformation(
          list: model.pets,
          title: 'Species of your pet ',
          text: model.petSelectedName,
          onPetSelected: model.onPetChanged,
        ),
        const SizedBox(height: 20),
        LsGeneralInformation(
          text: model.breedSelectedName,
          title: 'Breed',
          list: model.breeds,
          onBreedtSelected: model.onBreedChanged,
        ),
        const SizedBox(height: 20),
        LsGeneralInformation(
          text: model.sizeSelectedName,
          title: 'Size (optional)',
          list: model.sizes,
          onSizeSelected: model.onSizeChanged,
        ),
        const SizedBox(height: 24),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Gender',
            style: St.body13600.copyWith(color: Cl.grey),
          ),
        ),
        const SizedBox(height: 13),
        Row(
          children: [
            Expanded(
              child: buildGender(
                isSelected: model.isMale,
                asset: Id.ic_male,
                text: 'Male',
                onPressed: model.onMalePressed,
                assetColor: model.isMale ? Cl.white : Cl.violet,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: buildGender(
                isSelected: model.isFemale,
                text: 'Female',
                asset: Id.ic_female,
                assetColor: model.isFemale ? Cl.white : null,
                onPressed: model.onFemalePressed,
              ),
            )
          ],
        )
      ],
    );
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
