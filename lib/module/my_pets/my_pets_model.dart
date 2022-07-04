part of my_pets;

class _MyPetsModel extends TTChangeNotifier<_MyPetsView> {
  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onIncreasePressed() {}

  void onAddAnotherPetPressed() {}

  void onEditPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createAddPetDetailInfo(isFormEdit: true);
    }));
  }
}
