part of add_pet_detail_info;

class AdditionalInformation extends StatelessWidget {
  const AdditionalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_AddPetDetailInfoModel>();

    return Consum<PetInfo>(
      value: model.petInfo,
      builder: (context, petInfo) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Text(
              'Additional Information',
              style: St.body18700.copyWith(
                color: Cl.black,
              ),
            ),
            const SizedBox(height: 32),
            buildAdditionalInformation(
              text: 'Neutered',
              value: petInfo.isNeutered,
              onChanged: petInfo.setNeutered,
            ),
            const SizedBox(height: 24),
            buildAdditionalInformation(
              text: 'Vaccinated',
              value: petInfo.isVaccinated,
              onChanged: petInfo.setVaccinated,
            ),
            const SizedBox(height: 24),
            buildAdditionalInformation(
              text: 'Friendly with dogs',
              value: petInfo.isFriendlyWithDogs,
              onChanged: petInfo.setFriendlyWithDogs,
            ),
            const SizedBox(height: 24),
            buildAdditionalInformation(
              text: 'Friendly with cats',
              value: petInfo.isFriendlyWithCats,
              onChanged: petInfo.setFriendlyWithCats,
            ),
            const SizedBox(height: 24),
            buildAdditionalInformation(
              text: 'Friendly with kids <10 year',
              value: petInfo.isFriendlyWithKidsSmallThan10year,
              onChanged: petInfo.setFriendlyWithKidsSmallThan10year,
            ),
            const SizedBox(height: 24),
            buildAdditionalInformation(
              text: 'Friendly with kids >10 year',
              value: petInfo.isFriendlyWithKidsBigthan10Year,
              onChanged: petInfo.setFriendlyWithKidsBigThan10year,
            ),
            const SizedBox(height: 24),
            buildAdditionalInformation(
              text: 'Microchipped',
              value: petInfo.isMicrochipped,
              onChanged: petInfo.setMicrochipped,
            ),
            const SizedBox(height: 24),
            buildAdditionalInformation(
              text: 'Purebred',
              value: petInfo.isPurebred,
              onChanged: petInfo.setPurebred,
            ),
          ],
        );
      },
    );
  }

  Widget buildAdditionalInformation({
    required String text,
    required bool value,
    Function(bool)? onChanged,
  }) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: St.body16400.copyWith(color: Cl.black),
          ),
        ),
        CupertinoSwitch(
          activeColor: Cl.violet,
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
