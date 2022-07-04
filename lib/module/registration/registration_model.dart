part of registration;

class _RegistrationModel extends TTChangeNotifier<_RegistrationView> {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  bool isAgree = false;
  bool isReceiveNewsletter = false;
  bool isSignUpEnabled = false;
  bool isCheckName = false;
  bool isCheckEmail = false;
  bool obscureText = true;

  _RegistrationModel()
      : nameController = TextEditingController(),
        passwordController = TextEditingController(),
        emailController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validate() {
    isCheckEmail = emailController.text.isNotEmpty && Validator.validEmail(emailController.text);
    isCheckName = nameController.text.isNotEmpty;
    isSignUpEnabled = nameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        isAgree;

    notifyListeners();
  }

  void onCheckPressed(bool? value) {
    if (value == null) {
      return;
    }
    if (value == isAgree) {
      return;
    }
    isAgree = value;
    validate();
    // notifyListeners();
  }

  onCheckReceiveNewsletters(bool? value) {
    if (value == null) {
      return;
    }
    if (value == isReceiveNewsletter) {
      return;
    }
    isReceiveNewsletter = value;
    notifyListeners();
  }

  void onSignUpPressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }

    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) {
      return createMain();
    }), (route) => false);
  }

  void onVisibilityPressed() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void onSignInPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createSignIn();
    }));
  }
}
