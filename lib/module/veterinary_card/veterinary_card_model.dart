part of veterinary_card;

class _VeterinaryCardModel extends TTChangeNotifier<_VeterinaryCardView> {
  final dates = <DateTime>[];
  final months = <DateTime>[];
  final times = <DateTime>[];
  final reviews = <ReviewInfo>[];
  final nearbyVets = <SpecialistsInfo>[];
  final useInfo = SpecialistsInfo.from({
    'name': 'Alekseenko Vasily ',
    'major': 'Veterinary Dentist',
    'distance': 1.5,
    'fee': 20.0,
    'experience': 10,
    'reviewCount': 125
  });

  int daySelectedIndex = 0;
  int isTimeSelected = 0;

  DateTime monthSelected = DateTime.now();

  _VeterinaryCardModel() {
    _initData(DateTime.now());
  }

  int getDaysInMonth(DateTime d) => DateTime(d.year, d.month + 1, 0).day;

  void _initData(DateTime d) {
    _genDateList(d);

    final lsMonth = List.generate(12, (index) {
      return DateTime(d.year, index + 1, 1);
    });
    months.clear();
    months.addAll(lsMonth);
    monthSelected = DateTime(d.year, d.month, 1);

    DateTime startTime = DateTime(d.year, d.month, d.day, 8, 30);

    final lsTime = List.generate(17, (index) {
      startTime = startTime.add(const Duration(minutes: 30));
      return DateTime(startTime.year, startTime.month, startTime.day, startTime.hour, startTime.minute);
    });
    times.clear();
    times.addAll(lsTime);
    notifyListeners();
    final lsreview = List.generate(10, (index) {
      return ReviewInfo.from({
        'imageUrl': 'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
        'name': 'Ann & Leo',
        'star': 5,
        'review':
            'Thank you very much! Great clinic! The dog was limping, X-rayed, prescribed quality treatment. Dog of fights! Excellent specialists!'
      });
    });
    reviews.addAll(lsreview);
    final lsNearbyVet = List.generate(100, (index) {
      return SpecialistsInfo.from({
        'imageUrl': 'https://placehold.jp/cc9999/993333/.png',
        'name': 'Lauren Sell$index',
        'major': 'Veterinary Dentist$index',
        'distance': 1.5,
        'fee': 20.0,
        'star': 4,
        'experience': 7,
        'reviewCount': 23
      });
    });

    nearbyVets.addAll(lsNearbyVet);
  }

  void _genDateList(DateTime d) {
    final days = getDaysInMonth(d);
    final lsDate = List.generate(days, (index) {
      return DateTime(d.year, d.month, index + 1);
    });
    dates.clear();
    dates.addAll(lsDate);
    notifyListeners();
  }

  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onMonthChange(DateTime? value) {
    if (value == null) {
      return;
    }
    if (value == monthSelected) {
      return;
    }
    monthSelected = value;
    _initData(monthSelected);
    notifyListeners();
  }

  void onDaySelectedPressed(int index) {
    if (daySelectedIndex != index) {
      daySelectedIndex = index;
      notifyListeners();
    }
  }

  void onTimeSelectedPressed(int index) {
    if (isTimeSelected != index) {
      isTimeSelected = index;
      notifyListeners();
    }
  }

  void onSharePressed() {}

  void onFavouritePressed() {}

  void onWriteAReviewPressed() {}

  void onBookPressed() {
    showBookingBottomSheet(context);
  }
}
