part of add_pet_detail_info;

class _AddPetDetailInfoModel extends TTChangeNotifier<_AddPetDetailInfoView> {
  final pets = <PetSpecyInfo>[];
  final breeds = <BreedInfo>[];
  final sizes = <SizeInfo>[];
  PetInfo petInfo = PetInfo();

  _AddPetDetailInfoModel() {
    _initData();
  }

  get onNeuteredPressed => null;

  void _initData() {
    final lsPet = List.generate(3, (index) {
      return PetSpecyInfo.from({
        'namePet': 'namePet$index',
      });
    });
    final lsBreed = List.generate(3, (index) {
      return BreedInfo.from({
        'breedName': 'breedName$index',
      });
    });

    final lsSize = List.generate(3, (index) {
      return SizeInfo.from({
        'sizePet': 'sizePet$index',
      });
    });
    sizes.addAll(lsSize);
    pets.addAll(lsPet);
    breeds.addAll(lsBreed);
  }

  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onSkipPressed() {}

  void onDateOfBirthPressed() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: petInfo.dob,
      firstDate: DateTime(2000, 1, 1),
      lastDate: DateTime.now(),
    );
    if (pickedDate == null || pickedDate == petInfo.dob) {
      return;
    }
    petInfo.setDob(pickedDate);
    notifyListeners();
  }
}
