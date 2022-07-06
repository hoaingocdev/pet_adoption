part of location_view_focused_start;

class _LocationViewFocusedStartModel extends TTChangeNotifier<_LocationViewFocusedStartView> {
  final TextEditingController controller;
  final isShowClear = ValueNotifier(false);

  final addesses = <AddressInfo>[];

  _LocationViewFocusedStartModel() : controller = TextEditingController() {
    _initData();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _initData() {
    final lsAddress = List.generate(100, (index) {
      return AddressInfo.from({'addess': 'addess$index'});
    });
    addesses.addAll(lsAddress);
  }

  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onSearchChange(String value) {
    if (value.isEmpty) {
      isShowClear.value = false;
      addesses.clear();
    } else {
      isShowClear.value = true;
      _initData();
    }
    notifyListeners();
  }

  void onCleared() {
    controller.clear();
    isShowClear.value = false;
    onSearchChange('');
    notifyListeners();
  }
}
