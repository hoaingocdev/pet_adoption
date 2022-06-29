part of add_pet_detail;

class _AddPetDetailModel extends TTChangeNotifier<_AddPetDetailView> {
  void onAddPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createAddPetDetailInfo();
    }));
  }

  void onNoLaterPressed() {
    Navigator.of(context).pop();
  }
}
