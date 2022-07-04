part of edit_profile;

class _EditProfileViewState extends TTState<_EditProfileModel, _EditProfileView> {
  @override
  Widget buildWithModel(BuildContext context, _EditProfileModel model) {
    return Scaffold(
      backgroundColor: Cl.white,
      appBar: AppBar(
        backgroundColor: Cl.white,
        leading: IconButton(
          onPressed: model.onBackPressed,
          icon: const Icon(
            Icons.arrow_back,
            color: Cl.violet,
          ),
        ),
        title: Text(
          'Your profile',
          style: St.body18700.copyWith(color: Cl.black),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: InkWell(
              onTap: model.onSkipPressed,
              child: Text(
                'Skip',
                style: St.body13600.copyWith(color: Cl.violet),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: model.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              const TTEditAvataWidget(
                imageUrl: 'https://placehold.jp/cc9999/993333/.png',
              ),
              const SizedBox(height: 32),
              AuthTextField(
                isRequired: true,
                textType: TextType.normal,
                controller: model.nameController,
                onChanged: (v) => model.validate(),
                labelText: 'Full name',
                suffixIcon: model.hasIconName ? Image.asset(Id.ic_success) : null,
              ),
              const SizedBox(height: 16),
              Text(
                'Owner',
                style: St.body13600.copyWith(color: Cl.grey),
              ),
              const SizedBox(height: 5),
              TTGenderButton(value: model.petInfo),
              const SizedBox(height: 16),
              AuthTextField(
                controller: model.emailController,
                onChanged: (v) => model.validate(),
                labelText: 'Email',
                isRequired: true,
                textType: TextType.email,
                suffixIcon: model.hasIconEmail ? Image.asset(Id.ic_success) : null,
              ),
              AuthTextField(
                controller: model.phoneController,
                onChanged: (v) => model.validate(),
                isRequired: true,
                textType: TextType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                labelText: 'Phone',
                suffixIcon: model.hasIconPhone
                    ? IconButton(
                        icon: Image.asset(Id.ic_close1),
                        onPressed: model.onClearPressed,
                      )
                    : null,
              ),
              const SizedBox(height: 24),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: 'About me',
                  labelStyle: St.body13600.copyWith(color: Cl.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Cl.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Cl.grey),
                  ),
                ),
              ),
              const SizedBox(height: 17),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TTButton(
                  backgroundColor: Cl.violet,
                  text: 'Get Started',
                  onPressed: model.enableGetStarted ? model.onGetStartedPressed : null,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
