part of welcome;

class _WelcomeModel extends TTChangeNotifier<_WelcomeView> {
  void oRegisterWithEmail() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) {
        return createRegistration();
      }),
      ((route) => false),
    );
  }

  void onContinnueWithFacebook() {}

  void onCotinueWithGoogle() {}

  void onSignInPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createSignIn();
    }));
  }
}
