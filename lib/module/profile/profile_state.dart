part of profile;

class _ProfileViewState extends TTState<_ProfileModel, _ProfileView> {
  @override
  Widget buildWithModel(BuildContext context, _ProfileModel model) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Image.asset(Id.ic_edit),
                const SizedBox(width: 4),
                Text(
                  'Edit',
                  style: St.body13600.copyWith(color: Cl.violet),
                )
              ],
            ),
          )
        ],
        backgroundColor: Cl.white,
        elevation: 0,
        title: Text(
          'Profile',
          style: St.body18700.copyWith(color: Cl.black),
        ),
      ),
      backgroundColor: Cl.lightGrey,
      body: Column(
        children: [
          Container(
            // height: 314 + device.padding.top,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(4, 6),
                    blurRadius: 28,
                    color: Cl.cl2D368A.withOpacity(0.2),
                  ),
                ],
                color: Cl.white),
            child: Column(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.network(
                      'https://placehold.jp/cc9999/993333/.png',
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Maria Martinez',
                  style: St.body24700.copyWith(color: Cl.black),
                ),
                const SizedBox(height: 16),
                Text(
                  'Kiev',
                  style: St.body16400.copyWith(color: Cl.grey),
                ),
                const SizedBox(height: 28),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildProfileItem(
                    text: 'My pets',
                    imageAsset: Id.ic_pet,
                  ),
                  buildProfileItem(
                    text: 'My favourites',
                    imageAsset: Id.ic_heart_favourite_like,
                  ),
                  buildProfileItem(
                    text: 'Add pet service',
                    imageAsset: Id.ic_service,
                  ),
                  buildProfileItem(
                    text: 'Invite friends',
                    imageAsset: Id.ic_announcement,
                  ),
                  buildProfileItem(
                    text: 'Help',
                    imageAsset: Id.ic_question_mark_circle,
                  ),
                  buildProfileItem(
                    text: 'Settings',
                    imageAsset: Id.ic_settings_gear,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildProfileItem({
    required String imageAsset,
    required String text,
  }) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Cl.violet.withOpacity(0.15),
                ),
                child: Image.asset(imageAsset),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(text),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Cl.grey,
                      size: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 1,
          margin: const EdgeInsets.only(left: 50),
          color: Cl.grey,
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
