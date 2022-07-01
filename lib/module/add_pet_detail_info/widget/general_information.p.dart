part of add_pet_detail_info;

class GeneralInformation extends StatelessWidget {
  const GeneralInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_AddPetDetailInfoModel>();

    return Consum<PetInfo>(
      value: model.petInfo,
      builder: (context, petInfo) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              text: petInfo.specyDisplay,
              onPetSelected: petInfo.setSpecy,
            ),
            const SizedBox(height: 20),
            LsGeneralInformation(
              text: petInfo.breedDisplay,
              title: 'Breed',
              list: model.breeds,
              onBreedtSelected: petInfo.setBreed,
            ),
            const SizedBox(height: 20),
            LsGeneralInformation(
              text: petInfo.sizeDisplay,
              title: 'Size (optional)',
              list: model.sizes,
              onSizeSelected: petInfo.setSize,
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
            TTGenderButton(value: model.petInfo),
            const SizedBox(height: 24),
            InkWell(
              onTap: model.onDateOfBirthPressed,
              child: Container(
                color: Colors.transparent,
                height: 54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date of birth',
                      style: St.body13600.copyWith(color: Cl.grey),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            DatetimeUtils.dateTimeFormat(petInfo.dob),
                            style: St.body16400.copyWith(color: Cl.black),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Cl.grey,
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      color: Cl.grey,
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
