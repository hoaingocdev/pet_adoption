part of results_near_me;

class _ResultsNearMeModel extends TTChangeNotifier<_ResultsNearMeView> {
  int tabIndex = 0;

  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onPagePressed(int index) {
    if (tabIndex != index) {
      tabIndex = index;
      notifyListeners();
    }
  }

  void onDentistPressed() {
    showSelectASpecialityBottomSheet(context);
  }
}
