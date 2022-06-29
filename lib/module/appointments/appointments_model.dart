part of appointments;

class _AppointmentsModel extends TTChangeNotifier<_AppointmentsView> {
  int tabIndex = 0;
  void onTabChanged(int index) {
    if (tabIndex != index) {
      tabIndex = index;
      notifyListeners();
    }
  }

  void onCenCelPressed() {}

  void onEditPressed() {}

  void onFindASpecialistPressed() {}
}
