part of sign_in;

class _SignInModel extends TTChangeNotifier<_SignInView> {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  bool isPasswordenabled = false;
  bool obscureText = true;
  bool hasIconEmail = false;

  _SignInModel()
      : emailController = TextEditingController(),
        passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validate() {
    isPasswordenabled = emailController.text.isNotEmpty && passwordController.text.isNotEmpty;

    hasIconEmail = emailController.text.isNotEmpty && Validator.validEmail(emailController.text);
    notifyListeners();
  }

  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onSignInPressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) {
      return createMain();
    }), ((route) => false));
  }

  void onVisibilityPressd() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void onRegistrationPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createRegistration();
    }));
  }
}
