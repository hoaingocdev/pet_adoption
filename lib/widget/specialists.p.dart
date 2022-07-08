part of results_near_me;

class Specialists extends StatelessWidget {
  final SpecialistsInfo specialistsInfo;
  final VoidCallback? onPressed;

  const Specialists({Key? key, required this.specialistsInfo, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        height: 128,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Cl.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.network(
                      specialistsInfo.imageUrl,
                      height: 72,
                      width: 72,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      specialistsInfo.name,
                      style: St.body18700.copyWith(color: Cl.black),
                    ),
                    Text(
                      specialistsInfo.major,
                      style: St.body14600.copyWith(color: Cl.black),
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          ignoreGestures: true,
                          itemSize: 12,
                          initialRating: 5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: specialistsInfo.star,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            // print(rating);
                          },
                        ),
                        const SizedBox(width: 11),
                        Text(
                          specialistsInfo.reviewCountDisplay,
                          style: St.body11500.copyWith(color: Cl.grey),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 9),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    specialistsInfo.experience.toString(),
                    style: St.body14600.copyWith(color: Cl.grey),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    'years of experience',
                    style: St.body11500.copyWith(color: Cl.grey),
                  ),
                  const SizedBox(width: 10),
                  buildItem(image: Id.ic_map),
                  const SizedBox(width: 8),
                  Text(
                    specialistsInfo.distanceDisplay,
                    style: St.body11500.copyWith(color: Cl.black),
                  ),
                  const SizedBox(width: 12),
                  buildItem(image: Id.ic_wallet),
                  Text(
                    specialistsInfo.feeDisplay,
                    style: St.body11500.copyWith(color: Cl.black),
                  ),
                ],
              ),
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
