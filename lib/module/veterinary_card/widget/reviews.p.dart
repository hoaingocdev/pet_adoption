part of veterinary_card;

class Reviews extends StatelessWidget {
  const Reviews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_VeterinaryCardModel>();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Reviews',
                style: St.body18700.copyWith(color: Cl.black),
              ),
              const Spacer(),
              Text(
                'View all 125 reviews',
                style: St.body13600.copyWith(color: Cl.violet),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
                color: Cl.violet,
              ),
            ],
          ),
        ),
        const SizedBox(height: 22),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SizedBox(
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, i) => const SizedBox(width: 16),
              itemCount: 10,
              itemBuilder: (_, i) {
                return buildListReview(
                  reviewInfo: model.reviews[i],
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TTButton(
            onPressed: model.onWriteAReviewPressed,
            borderRadius: 9,
            backgroundColor: Cl.clF0F0F8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Id.ic_edit_pen_file),
                Text(
                  'Write a Review',
                  style: St.body16700.copyWith(color: Cl.violet),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildListReview({
    required ReviewInfo reviewInfo,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 177,
          width: 260,
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Cl.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 102, top: 15),
                child: Text(
                  reviewInfo.name,
                  style: St.body16600.copyWith(color: Cl.black),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 100, top: 4),
                  child: TTStar(
                    itemCount: reviewInfo.star,
                  )),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  text: TextSpan(
                    text: reviewInfo.review,
                    style: St.body12400.copyWith(color: Cl.black),
                    children: [
                      TextSpan(text: 'more', style: St.body13600.copyWith(color: Cl.violet)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    buildAVerifiedReview(),
                    const Spacer(),
                    Text(
                      '26.02.2019',
                      style: St.body10500.copyWith(color: Cl.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              reviewInfo.imageUrl,
              height: 72,
              width: 72,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildAVerifiedReview() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Text(
            'a verified review',
            style: St.body12400.copyWith(color: Cl.black),
          ),
          const SizedBox(width: 8),
          Container(
            height: 8,
            width: 8,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: Image.asset(Id.ic_check),
          ),
        ],
      ),
    );
  }
}
