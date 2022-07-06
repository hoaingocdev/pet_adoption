part of results_near_me;

class _ResultsNearMeModel extends TTChangeNotifier<_ResultsNearMeView> {
  final specialists = <SpecialistsInfo>[];
  int tabIndex = 0;
  _ResultsNearMeModel() {
    _initData();
  }

  void _initData() {
    final lsSpecialists = List.generate(100, (index) {
      return SpecialistsInfo.from({
        'imageUrl': 'https://placehold.jp/cc9999/993333/.png',
        'name': 'Vasilenko Oksana$index',
        'major': 'Veterinary Dentist$index',
        'distance': 1.5,
        'fee': 20.0,
        'star': 5,
        'experience': 10,
        'reviewCount': 125
      });
    });
    specialists.addAll(lsSpecialists);
  }

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

  void onCalendarPressed() {
    showSelectADateBottomSheet(context);
  }

  void onLocationVFStartPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createLocationViewFocusedStart();
    }));
  }

  void onVeterinaryPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createVeterinaryCard();
    }));
  }
}
