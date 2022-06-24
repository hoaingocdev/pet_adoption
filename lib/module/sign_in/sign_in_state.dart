part of sign_in;

class _SignInViewState extends TTState<_SignInModel, _SignInView> {
  @override
  Widget buildWithModel(BuildContext context, _SignInModel model) {
    final padding = device.padding.top;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Cl.clF9F8FD,
              Cl.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5 + padding),
                  width: double.infinity,
                  height: 338 + padding,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Cl.cl4596EA,
                        Cl.cl4552CB,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 0.5],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: model.onBackPressed,
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Cl.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          'Sign In ',
                          style: St.body34700.copyWith(color: Cl.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 164),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 1,
                        width: 92,
                        color: Cl.clF0F0F8,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'or continue with',
                        style: St.body16400.copyWith(color: Cl.black),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        height: 1,
                        width: 92,
                        color: Cl.clF0F0F8,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 11),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 104),
                  child: Row(
                    children: [
                      Image.asset(Id.ic_facebook),
                      const SizedBox(width: 55),
                      Image.asset(Id.ic_gg_red),
                    ],
                  ),
                ),
                const SizedBox(height: 105),
                InkWell(
                  onTap: model.onRegistrationPressed,
                  child: RichText(
                    text: TextSpan(
                      text: 'Don\'t have account yet?',
                      style: St.body16400.copyWith(
                        color: Cl.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Registration',
                          style: St.body16700.copyWith(
                            color: Cl.violet,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 171 + padding,
              left: 20,
              right: 20,
              child: bulidShadow(),
            ),
          ],
        ),
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
