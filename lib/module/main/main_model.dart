part of main;

class _MainModel extends TTChangeNotifier<_MainView> {
  int pageIndex = 0;

  void onPagePressed(int index) {
    if (pageIndex != index) {
      pageIndex = index;
      notifyListeners();
    }
  }
}
