part of appointments;

class _AppointmentsModel extends TTChangeNotifier<_AppointmentsView> {
  final lsUpcoming = <AppointmentInfo>[];
  final lsPast = <AppointmentInfo>[];

  int tabIndex = 0;

  _AppointmentsModel() {
    _initData();
  }

  void _initData() {
    final lsAppointments = List.generate(100, (index) {
      return AppointmentInfo.from({
        'imageUrl': 'https://placehold.jp/cc9999/993333/100x100.png',
        'name': 'Alekseenko Vasily $index',
        'major': 'Veterinary Dentist$index',
        'clinic': 'Veterinary clinic "Alden-Vet"$index',
        'address': '141 N Union Ave, Los Angeles, CA$index',
        'time': 'Wed 9 Sep — 10:30 am$index',
        'distance': 1.5,
        'fee': 20.0,
        'star': 5,
        'reviewCount': 125
      });
    });
    final lsAppointment = List.generate(10, (index) {
      return AppointmentInfo.from({
        'imageUrl': 'https://placehold.jp/cc9999/993333/.png',
        'name': 'name $index',
        'major': 'Veterinary Dentist$index',
        'clinic': 'Veterinary clinic "Alden-Vet"$index',
        'address': '141 N Union Ave, Los Angeles, CA$index',
        'time': 'Wed 9 Sep — 10:30 am$index',
        'distance': 2.0,
        'fee': 20.0,
        'star': 3,
        'reviewCount': 105
      });
    });
    lsPast.addAll(lsAppointment);

    lsUpcoming.addAll(lsAppointments);
  }

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
