part of welcome;

class _WelcomeViewState extends TTState<_WelcomeModel, _WelcomeView> {
  @override
  Widget buildWithModel(BuildContext context, _WelcomeModel model) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Cl.cl4596EA,
              Cl.cl4552CB,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0, 0.4],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 84 + MediaQuery.of(context).padding.top),
                child: RichText(
                  text: TextSpan(
                    text: 'Welcome to',
                    style: St.body44700.copyWith(color: Cl.white),
                    children: [
                      TextSpan(
                        text: ' Pet Care',
                        style: St.body44700.copyWith(color: Cl.yellow),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 54),
              buildButtonItem(
                onPressed: model.onContinnueWithFacebook,
                asset: Id.ic_fb,
                text1: 'Continue with',
                text2: ' Facebook',
              ),
              const SizedBox(height: 24),
              buildButtonItem(
                onPressed: model.onCotinueWithGoogle,
                asset: Id.ic_google,
                text1: 'Continue with',
                text2: ' Google',
              ),
              const SizedBox(height: 48),
              TTButton(
                onPressed: model.oRegisterWithEmail,
                borderColor: Cl.white,
                child: Center(
                  child: Text(
                    'Register with Email',
                    style: St.body16700.copyWith(color: Cl.white),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              InkWell(
                onTap: model.onSignInPressed,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account?',
                      style: St.body16400.copyWith(color: Cl.white),
                      children: [
                        TextSpan(
                          text: 'Sign In',
                          style: St.body16700.copyWith(color: Cl.white),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TTButton buildButtonItem({
    required String asset,
    required String text1,
    required String text2,
    VoidCallback? onPressed,
  }) {
    return TTButton(
      onPressed: onPressed,
      backgroundColor: Cl.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(asset),
            const SizedBox(width: 16),
            RichText(
              text: TextSpan(
                text: text1,
                style: St.body16400.copyWith(color: Cl.violet),
                children: [
                  TextSpan(
                    text: text2,
                    style: St.body16700.copyWith(color: Cl.violet),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
