part of booking_confirmation;

class _BookingConfirmationModel extends TTChangeNotifier<_BookingConfirmationView> {
  PetInfo petInfo = PetInfo();
  final times = <DateTime>[];
  int isTimeSelected = 0;
  late DateTime dob;
  _BookingConfirmationModel() {
    _initData(DateTime.now());
    dob = DateTime.now();
  }
  void _initData(DateTime d) {
    DateTime startTime = DateTime(d.year, d.month, d.day, 8, 30);
    final lsTime = List.generate(17, (index) {
      startTime = startTime.add(const Duration(minutes: 30));
      return DateTime(
        startTime.year,
        startTime.month,
        startTime.day,
        startTime.hour,
        startTime.minute,
      );
    });
    times.clear();
    times.addAll(lsTime);
    notifyListeners();
  }

  void onTimeSelectedPressed(int index) {
    if (isTimeSelected != index) {
      isTimeSelected = index;
      notifyListeners();
    }
  }

  void onClosePressed() {
    Navigator.of(context).pop();
  }

  void onDatePressed() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: petInfo.dob,
      firstDate: DateTime(2000, 1, 1),
      lastDate: DateTime.now(),
    );
    if (pickedDate == null || pickedDate == dob) {
      return;
    }
    if (pickedDate != dob) {
      dob = pickedDate;
    }

    notifyListeners();
  }

  void onBookPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createThankYou();
    }));
  }
}
