part of edit_profile;

class _EditProfileModel extends TTChangeNotifier<_EditProfileView> {
  PetInfo petInfo = PetInfo();
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final formKey = GlobalKey<FormState>();

  bool enableGetStarted = false;
  bool hasIconName = false;
  bool hasIconEmail = false;
  bool hasIconPhone = false;

  _EditProfileModel()
      : nameController = TextEditingController(),
        emailController = TextEditingController(),
        phoneController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    super.dispose();
  }

  void validate() {
    hasIconPhone = phoneController.text.isNotEmpty;
    enableGetStarted =
        nameController.text.isNotEmpty && phoneController.text.isNotEmpty && emailController.text.isNotEmpty;
    hasIconName = nameController.text.isNotEmpty;
    hasIconEmail = emailController.text.isNotEmpty && Validator.validEmail(emailController.text);
    notifyListeners();
  }

  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onSkipPressed() {}

  void onGetStartedPressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    Navigator.of(context).pop();
  }

  void onClearPressed() {
    phoneController.clear();
  }
}
