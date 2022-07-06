part of veterinary_card;

class _VeterinaryCardModel extends TTChangeNotifier<_VeterinaryCardView> {
  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onSharePressed() {}

  void onFavouritePressed() {}
}
