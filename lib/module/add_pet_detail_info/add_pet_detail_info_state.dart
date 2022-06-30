part of add_pet_detail_info;

class _AddPetDetailInfoViewState extends TTState<_AddPetDetailInfoModel, _AddPetDetailInfoView> {
  @override
  Widget buildWithModel(BuildContext context, _AddPetDetailInfoModel model) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: model.onBackPressed,
          icon: const Icon(
            Icons.arrow_back,
            color: Cl.violet,
          ),
        ),
        backgroundColor: Cl.white,
        elevation: 1,
        title: Text(
          'Add pet detail',
          style: St.body18700.copyWith(color: Cl.black),
        ),
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
            Center(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(56),
                    child: Image.network(
                      'https://placehold.jp/cc9999/993333/.png',
                      height: 112,
                      width: 112,
                    ),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(13), color: Cl.violet),
                    child: Image.asset(Id.ic_plus),
                  )
                ],
              ),
            ),
            const SizedBox(height: 32),
            const GeneralInformation(),
          ],
        ),
      ),
    );
  }

  Widget builSuffixIcon() {
    return const Icon(
      Icons.arrow_forward_ios_outlined,
      size: 20,
    );
  }
}
