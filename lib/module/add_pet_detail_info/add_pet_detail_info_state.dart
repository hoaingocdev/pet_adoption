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
                model.isFromEdit ? 'Save' : 'Skip',
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
                children: [
                  const SizedBox(height: 32),
                  const TTEditAvataWidget(
                    imageUrl: 'https://placehold.jp/cc9999/993333/.png',
                  ),
                  const SizedBox(height: 32),
                  const GeneralInformation(),
                  const AdditionalInformation(),
                  const AuthTextField(
                    labelText: 'Pet’s nursery name (optional)',
                  ),
                  const SizedBox(height: 32),
                  const Reminders(),
                  TTButton(
                    onPressed: model.onNextPressed,
                    backgroundColor: Cl.violet,
                    text: model.isFromEdit ? 'Save' : 'Next',
                  ),
                  const SizedBox(height: 115)
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
