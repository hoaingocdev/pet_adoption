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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const TTEditAvataWidget(
              imageUrl: 'https://placehold.jp/cc9999/993333/.png',
            ),
            const SizedBox(height: 32),
            AuthTextField(
              labelText: 'Full name',
              suffixIcon: Image.asset(Id.ic_success),
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
              labelText: 'Email',
              isRequired: true,
              textType: TextType.email,
              suffixIcon: Image.asset(Id.ic_success),
            )
          ],
        ),
      ),
    );
  }
}
