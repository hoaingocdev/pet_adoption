part of main_content;

class _MainContentViewState extends TTState<_MainContentModel, _MainContentView> {
  @override
  Widget buildWithModel(BuildContext context, _MainContentModel model) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          // color: Colors.red,
          gradient: LinearGradient(
            colors: [
              Cl.clF9F8FD,
              Cl.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13, right: 15),
                  child: buildIconButton(model),
                ),
                const SizedBox(height: 75),
                buildTitle(),
                const SizedBox(height: 49),
                Expanded(
                  child: GridView.builder(
                    clipBehavior: Clip.none,
                    padding: EdgeInsets.zero,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                    ),
                    itemCount: model.categories.length,
                    itemBuilder: (_, i) {
                      return buildListIterm(caterogyInfo: model.categories[i], onPressed: model.onShowBottomSheet);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTitle() {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: 'What are you looking for,',
        style: St.body34700.copyWith(color: Cl.black),
        children: [
          TextSpan(
            text: 'Maria?',
            style: St.body34700.copyWith(color: Cl.yellow),
          ),
        ],
      ),
    );
  }

  Widget buildIconButton(_MainContentModel model) {
    return Align(
      alignment: Alignment.topRight,
      child: Material(
        borderRadius: BorderRadius.circular(100),
        child: IconButton(
          onPressed: model.oSearchPressed,
          icon: Image.asset(
            Id.ic_find,
          ),
        ),
      ),
    );
  }

  Widget buildListIterm({
    VoidCallback? onPressed,
    required CaterogyInfo caterogyInfo,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Cl.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(3, 3),
              blurRadius: 34,
              color: Cl.color2E1E7A.withOpacity(0.1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              caterogyInfo.imageUrl,
              width: 34,
              height: 34,
            ),
            const SizedBox(height: 6),
            Text(
              caterogyInfo.name,
              style: St.body11500,
            ),
          ],
        ),
      ),
    );
  }
}
