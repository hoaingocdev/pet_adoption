part of registration;

class _RegistrationViewState extends TTState<_RegistrationModel, _RegistrationView> {
  @override
  Widget buildWithModel(BuildContext context, _RegistrationModel model) {
    final padding = device.padding.top;
    return Scaffold(
      body: Stack(
        children: [
          TTBackgroundWidget(
            onPagePressed: model.onSignInPressed,
            text1: 'Already have an account?',
            heightSpace: 220,
            text2: 'Sign In',
            title: 'Registration',
            height: 338 + padding,
            top: 5 + padding,
          ),
          Positioned(
            top: 120 + padding,
            left: 20,
            right: 20,
            child: buildShadowItem(),
          ),
        ],
      ),
    );
  }

  Widget buildShadowItem() {
    return Container(
      // height: 406,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Cl.cl2D368A.withOpacity(0.6),
            offset: const Offset(4, 6),
            blurRadius: 28,
          ),
        ],
        borderRadius: BorderRadius.circular(16),
        color: Cl.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: model.formKey,
          child: Column(
            children: [
              AuthTextField(
                isRequired: true,
                controller: model.nameController,
                onChanged: (v) => model.validate(),
                textType: TextType.normal,
                labelText: 'Full name',
                suffixIcon: model.isCheckName ? Image.asset(Id.ic_success) : null,
              ),
              const SizedBox(height: 16),
              AuthTextField(
                onChanged: (v) => model.validate(),
                controller: model.emailController,
                isRequired: true,
                textType: TextType.email,
                labelText: 'Email',
                suffixIcon: model.isCheckEmail ? Image.asset(Id.ic_success) : null,
              ),
              const SizedBox(height: 16),
              AuthTextField(
                obscureText: model.obscureText,
                onChanged: (v) => model.validate(),
                controller: model.passwordController,
                isRequired: true,
                textType: TextType.password,
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed: model.onVisibilityPressed,
                  icon: Icon(
                    model.obscureText ? Icons.visibility : Icons.visibility_off,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              buildCheckbox(
                onChange: model.onCheckPressed,
                value: model.isAgree,
                text1: 'I agree with ',
                text2: 'the rules',
                decoration: TextDecoration.underline,
              ),
              buildCheckbox(
                onChange: model.onCheckReceiveNewsletters,
                value: model.isReceiveNewsletter,
                text1: 'I do not want to receive newsletter',
              ),
              const SizedBox(height: 24),
              TTButton(
                onPressed: model.isSignUpEnabled ? model.onSignUpPressed : null,
                backgroundColor: model.isSignUpEnabled ? Cl.violet : Cl.grey,
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: St.body16700.copyWith(color: Cl.white),
                  ),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCheckbox({
    required String text1,
    String? text2,
    TextDecoration? decoration,
    bool? value,
    required Function(bool?)? onChange,
  }) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChange,
          activeColor: Cl.violet,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        RichText(
          text: TextSpan(
            text: text1,
            style: St.body12400.copyWith(color: Cl.black),
            children: [
              TextSpan(
                text: text2,
                style: St.body12400.copyWith(
                  color: Cl.violet,
                  decoration: decoration,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
