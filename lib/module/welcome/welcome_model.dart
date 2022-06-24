part of welcome;

class _WelcomeModel extends TTChangeNotifier<_WelcomeView> {
  void oRegisterWithEmail() {}

  void onContinnueWithFacebook() {}

  void onCotinueWithGoogle() {}

  void onSignInPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createSignIn();
    }));
  }
}
