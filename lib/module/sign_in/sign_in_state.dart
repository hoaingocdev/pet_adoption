part of sign_in;

class _SignInViewState extends TTState<_SignInModel, _SignInView> {
  @override
  Widget buildWithModel(BuildContext context, _SignInModel model) {
    final padding = device.padding.top;
    return Scaffold(
      body: Stack(
        children: [
          TTBackgroundWidget(
            text1: 'Don\'t have account yet?',
            heightSpace: 168,
            title: 'Sign In ',
            text2: 'Registration',
            height: 338 + padding,
            top: 5 + padding,
            onPressed: model.onBackPressed,
            onPagePressed: model.onRegistrationPressed,
          ),
          Positioned(
            top: 171 + padding,
            left: 20,
            right: 20,
            child: bulidShadow(),
          ),
        ],
      ),
      //
    );
  }

  Widget bulidShadow() {
    return Container(
      // height: 270,
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
              const SizedBox(height: 11),
              AuthTextField(
                  controller: model.emailController,
                  onChanged: (v) => model.validate(),
                  labelText: 'Email',
                  suffixIcon: model.hasIconEmail
                      ? Image.asset(
                          Id.ic_success,
                          height: 10,
                          width: 10,
                        )
                      : null,
                  isRequired: true,
                  textType: TextType.email),
              const SizedBox(height: 22),
              AuthTextField(
                onChanged: (v) => model.validate(),
                controller: model.passwordController,
                obscureText: model.obscureText,
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed: model.onVisibilityPressd,
                  icon: Icon(
                    model.obscureText ? Icons.visibility : Icons.visibility_off,
                    size: 15,
                  ),
                ),
                isRequired: true,
                textType: TextType.password,
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Do not remember the password?',
                  style: St.body12400.copyWith(
                    color: Cl.violet,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              TTButton(
                onPressed: model.isPasswordenabled ? model.onSignInPressed : null,
                backgroundColor: Cl.violet,
                child: Center(
                  child: Text(
                    'Sign In',
                    style: St.body16700.copyWith(color: Cl.white),
                  ),
                ),
              ),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
