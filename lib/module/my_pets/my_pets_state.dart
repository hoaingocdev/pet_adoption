part of my_pets;

class _MyPetsViewState extends TTState<_MyPetsModel, _MyPetsView> {
  @override
  Widget buildWithModel(BuildContext context, _MyPetsModel model) {
    return Scaffold(
      backgroundColor: Cl.lightGrey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Cl.lightGrey,
        leading: IconButton(
          onPressed: model.onBackPressed,
          icon: const Icon(
            Icons.arrow_back,
            color: Cl.violet,
          ),
        ),
        actions: [
          IconButton(
            onPressed: model.onIncreasePressed,
            icon: Image.asset(
              Id.ic_plus,
              color: Cl.violet,
            ),
          )
        ],
        title: Text(
          'My pets',
          style: St.body18700.copyWith(color: Cl.black),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          buildPetItem(onPressed: model.onEditPressed),
          const SizedBox(height: 23),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TTButton(
              onPressed: model.onAddAnotherPetPressed,
              borderRadius: 9,
              backgroundColor: Cl.clF0F0F8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Id.ic_plus,
                    height: 24,
                    width: 24,
                    color: Cl.violet,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Add another pet',
                    style: St.body16700.copyWith(color: Cl.violet),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildPetItem({VoidCallback? onPressed}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      // height: 279,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Cl.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(4, 6),
            blurRadius: 28,
            color: Cl.cl2D368A.withOpacity(0.1),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 23, right: 24),
            child: InkWell(
              onTap: onPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(Id.ic_edit),
                  const SizedBox(width: 4),
                  Text(
                    'Edit',
                    style: St.body13600.copyWith(color: Cl.violet),
                  )
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.network(
              'https://placehold.jp/cc9999/993333/.png',
              width: 112,
              height: 112,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Troy',
            style: St.body24700.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 4),
          Text(
            'Toy terrier',
            style: St.body16400.copyWith(color: Cl.grey),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
