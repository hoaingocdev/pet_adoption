part of add_pet_detail_info;

enum GenderEnum { male, female }

class _AddPetDetailInfoModel extends TTChangeNotifier<_AddPetDetailInfoView> {
  final pets = <PetInfo>[];
  final breeds = <BreedInfo>[];
  final sizes = <SizeInfo>[];
  GenderEnum genderEnum = GenderEnum.female;

  PetInfo? petSelected;
  BreedInfo? breedSelected;
  SizeInfo? sizeSelected;

  bool get isMale => genderEnum == GenderEnum.male;
  bool get isFemale => genderEnum == GenderEnum.female;

  String get petSelectedName => petSelected?.namePet ?? '';
  String get breedSelectedName => breedSelected?.breedName ?? '';
  String get sizeSelectedName => sizeSelected?.sizePet ?? '';

  _AddPetDetailInfoModel() {
    _initData();
  }

  void _initData() {
    final lsPet = List.generate(3, (index) {
      return PetInfo.from({
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

  void onPetChanged(PetInfo? value) {
    if (value == null) {
      return;
    }
    if (value == petSelected) {
      return;
    }
    petSelected = value;
    notifyListeners();
  }

  onBreedChanged(BreedInfo? value) {
    if (value == null) {
      return;
    }
    if (value == breedSelected) {
      return;
    }
    breedSelected = value;
    notifyListeners();
  }

  onSizeChanged(SizeInfo? value) {
    if (value == null) {
      return;
    }
    if (value == sizeSelected) {
      return;
    }
    sizeSelected = value;
    notifyListeners();
  }

  void onMalePressed() {
    if (genderEnum != GenderEnum.male) {
      genderEnum = GenderEnum.male;
      notifyListeners();
    }
  }

  void onFemalePressed() {
    if (genderEnum != GenderEnum.female) {
      genderEnum = GenderEnum.female;
      notifyListeners();
    }
  }
}
