part of onboard;

class _OnboardModel extends TTChangeNotifier<_OnboardView> {
  final PageController pageController;
  int index = 0;

  _OnboardModel() : pageController = PageController();
  void onPageChanged(int value) {
    index = value;
    notifyListeners();
  }

  void onNextPressed() {
    if (index == 2) {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return createWelcome();
      }));
      //get started
      return;
    }
    pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }
}
