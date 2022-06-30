part of add_pet_detail_info;

class _AddPetDetailInfoViewState extends TTState<_AddPetDetailInfoModel, _AddPetDetailInfoView> {
  @override
  Widget buildWithModel(BuildContext context, _AddPetDetailInfoModel model) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: model.onBackPressed,
          icon: const Icon(
            Icons.arrow_back,
            color: Cl.violet,
          ),
        ),
        backgroundColor: Cl.white,
        elevation: 1,
        title: Text(
          'Add pet detail',
          style: St.body18700.copyWith(color: Cl.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: InkWell(
              onTap: model.onSkipPressed,
              child: Text(
                'Skip',
                style: St.body13600.copyWith(color: Cl.violet),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Consum<PetInfo>(
            value: model.petInfo,
            builder: (context, petInfo) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32),
                  Center(
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(56),
                          child: Image.network(
                            'https://placehold.jp/cc9999/993333/.png',
                            height: 112,
                            width: 112,
                          ),
                        ),
                        Container(
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Cl.violet,
                          ),
                          child: Image.asset(Id.ic_plus),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  const GeneralInformation(),
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
                  const AuthTextField(
                    labelText: 'Pet’s nursery name (optional)',
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Reminders',
                    style: St.body24700.copyWith(color: Cl.black),
                  ),
                  Text(
                    'Add vaccines, haircuts, pills, estrus, etc. and you will receive notifications for the next event.',
                    style: St.body16400.copyWith(color: Cl.black),
                  ),
                  const SizedBox(height: 24),
                ],
              );
            },
          ),
        ),
      ),
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
