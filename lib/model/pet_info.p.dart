import 'package:flutter/material.dart';
import 'package:pet_adoption/model/model.dart';

enum GenderEnum { male, female }

class PetInfo extends ChangeNotifier {
  String namePet;
  PetSpecyInfo? specy;
  BreedInfo? breed;
  SizeInfo? size;
  GenderEnum genderEnum;
  DateTime dob;
  bool isNeutered,
      isVaccinated,
      isFriendlyWithDogs,
      isFriendlyWithCats,
      isFriendlyWithKidsSmallThan10year,
      isFriendlyWithKidsBigthan10Year,
      isMicrochipped,
      isPurebred;

  bool get isMale => genderEnum == GenderEnum.male;
  bool get isFemale => genderEnum == GenderEnum.female;

  String get specyDisplay => specy?.namePet ?? '';
  String get breedDisplay => breed?.breedName ?? '';
  String get sizeDisplay => size?.sizePet ?? '';

  PetInfo({
    this.namePet = '',
    this.specy,
    this.breed,
    this.size,
    this.genderEnum = GenderEnum.male,
    this.isNeutered = true,
    this.isVaccinated = true,
    this.isPurebred = true,
    this.isFriendlyWithCats = true,
    this.isFriendlyWithDogs = true,
    this.isFriendlyWithKidsBigthan10Year = true,
    this.isFriendlyWithKidsSmallThan10year = true,
    this.isMicrochipped = true,
  }) : dob = DateTime.now();

  void setSpecy(PetSpecyInfo? value) {
    if (value == null) {
      return;
    }
    if (value == specy) {
      return;
    }
    specy = value;
    notifyListeners();
  }

  void setBreed(BreedInfo? value) {
    if (value == null) {
      return;
    }
    if (value == breed) {
      return;
    }
    breed = value;
    notifyListeners();
  }

  void setSize(SizeInfo? value) {
    if (value == null) {
      return;
    }
    if (value == size) {
      return;
    }
    size = value;
    notifyListeners();
  }

  void setNeutered(bool value) {
    if (value != isNeutered) {
      isNeutered = value;
      notifyListeners();
    }
  }

  void setVaccinated(bool value) {
    if (value != isVaccinated) {
      isVaccinated = value;
      notifyListeners();
    }
  }

  void setFriendlyWithDogs(bool value) {
    if (value != isFriendlyWithDogs) {
      isFriendlyWithDogs = value;
      notifyListeners();
    }
  }

  void setFriendlyWithCats(bool value) {
    if (value != isFriendlyWithCats) {
      isFriendlyWithCats = value;
      notifyListeners();
    }
  }

  void setFriendlyWithKidsSmallThan10year(bool value) {
    if (value != isFriendlyWithKidsSmallThan10year) {
      isFriendlyWithKidsSmallThan10year = value;
      notifyListeners();
    }
  }

  void setFriendlyWithKidsBigThan10year(bool value) {
    if (value != isFriendlyWithKidsBigthan10Year) {
      isFriendlyWithKidsBigthan10Year = value;
      notifyListeners();
    }
  }

  void setMicrochipped(bool value) {
    if (value != isMicrochipped) {
      isMicrochipped = value;
      notifyListeners();
    }
  }

  void setPurebred(bool value) {
    if (value != isPurebred) {
      isPurebred = value;
      notifyListeners();
    }
  }

  void setGender(GenderEnum value) {
    if (value != genderEnum) {
      genderEnum = value;
      notifyListeners();
    }
  }

  void setDob(DateTime pickedDate) {
    if (pickedDate != dob) {
      dob = pickedDate;
    }
  }
}
