part of profile;

class _ProfileModel extends TTChangeNotifier<_ProfileView> {
  void onMyPetsPressed() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) {
        return createMyPets();
      }),
    );
  }

  void onMyFavouritesPressed() {}

  void onAddPetServicePressed() {}

  void onInviteFriendsPressed() {}

  void onHelpPressed() {}

  void onSettingsPressed() {}
}
