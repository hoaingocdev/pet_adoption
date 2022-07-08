part of veterinary_card;

class VeterinaryCardTop extends StatelessWidget {
  final double height;
  final double top;
  final VoidCallback? onBackPressed;
  final VoidCallback? onSharePressed;
  final VoidCallback? onFavouritePressed;

  const VeterinaryCardTop({
    Key? key,
    required this.height,
    required this.top,
    this.onBackPressed,
    this.onSharePressed,
    this.onFavouritePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_VeterinaryCardModel>();

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.network(
          'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
          height: height,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: top,
            left: 14,
            right: 15,
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: onBackPressed,
                icon: const Icon(
                  Icons.arrow_back,
                  color: Cl.white,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: Image.asset(Id.ic_share),
                onPressed: onSharePressed,
              ),
              const SizedBox(width: 17),
              IconButton(
                icon: Image.asset(Id.ic_favourite),
                onPressed: onFavouritePressed,
              )
            ],
          ),
        ),
        Positioned(
          top: 400,
          left: 20,
          right: 20,
          child: buildUseInfo(specialistsInfo: model.useInfo),
        )
      ],
    );
  }

  Widget buildUseInfo({required SpecialistsInfo specialistsInfo}) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Cl.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(4, 6),
            blurRadius: 28,
            color: Cl.cl2D368A.withOpacity(0.2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 20, right: 16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  specialistsInfo.name,
                  style: St.body18700.copyWith(color: Cl.black),
                ),
                const SizedBox(height: 2),
                Text(
                  specialistsInfo.major,
                  style: St.body14600.copyWith(color: Cl.black),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Text(
                      specialistsInfo.experience.toString(),
                      style: St.body12400.copyWith(color: Cl.darkGrey),
                    ),
                    Text(
                      ' years of experience',
                      style: St.body12400.copyWith(color: Cl.darkGrey),
                    ),
                  ],
                ),
                const SizedBox(height: 9),
                Row(
                  children: [
                    buildItem(image: Id.ic_wallet),
                    const SizedBox(width: 12),
                    Text(
                      specialistsInfo.feeDisplay,
                      style: St.body11500.copyWith(color: Cl.black),
                    ),
                    const SizedBox(width: 12),
                    buildItem(image: Id.ic_map),
                    const SizedBox(width: 12),
                    Text(
                      specialistsInfo.distanceDisplay,
                      style: St.body11500.copyWith(color: Cl.black),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Cl.violet,
                  ),
                  child: Center(
                    child: Text(
                      '4.9',
                      style: St.body28700.copyWith(color: Cl.white),
                    ),
                  ),
                ),
                const SizedBox(height: 11),
                Text(
                  '125 reviews',
                  style: St.body11500.copyWith(color: Cl.black),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildItem({
    required String image,
  }) {
    return Container(
      height: 24,
      width: 24,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Cl.clF0F0F8,
      ),
      child: Image.asset(image),
    );
  }
}
