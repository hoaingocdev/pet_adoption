part of main_content;

class _MainContentModel extends TTChangeNotifier<_MainContentView> {
  final categories = <CaterogyInfo>[];

  _MainContentModel() {
    _initData();
  }

  void _initData() {
    final lscaterogy = List.generate(100, (index) {
      return CaterogyInfo.from({
        'imageUrl': 'https://placehold.jp/cc9999/993333/.png',
        'name': 'name$index',
      });
    });
    categories.addAll(lscaterogy);
  }

  void oSearchPressed() {}

  void onShowBottomSheet() {
    showAddPetDetailBottomSheet(context);
  }
}
