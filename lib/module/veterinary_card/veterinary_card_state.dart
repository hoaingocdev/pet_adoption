part of veterinary_card;

class _VeterinaryCardViewState extends TTState<_VeterinaryCardModel, _VeterinaryCardView> {
  @override
  Widget buildWithModel(BuildContext context, _VeterinaryCardModel model) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VeterinaryCardTop(
                height: 420 + device.padding.top,
                top: 5 + device.padding.top,
                onBackPressed: model.onBackPressed,
                onFavouritePressed: model.onFavouritePressed,
                onSharePressed: model.onSharePressed,
              ),
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  '“He was friendly and diligent in getting to the right diagnosis and presciption.” ',
                  style: St.body16400,
                ),
              ),
              const SizedBox(height: 8),
              buildAVerifiedReview(),
              const SizedBox(height: 12),
              buildstar(),
              const SizedBox(height: 32),
              const CalendarBox(),
              const SizedBox(height: 27),
              const Location(),
              const SizedBox(height: 40),
              const UsedInfo(),
              const SizedBox(height: 40),
              const Reviews(),
              const SizedBox(height: 24),
              const NearbyVet(),
              const SizedBox(height: 28),
              Container(
                // height: 108 + device.padding.bottom,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                    color: Cl.white),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 24),
                              RichText(
                                text: TextSpan(
                                  text: '\$20',
                                  style: St.body24700.copyWith(color: Cl.black),
                                  children: [
                                    TextSpan(
                                      text: ' / first visit',
                                      style: St.body16400.copyWith(color: Cl.black),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  const TTStar(itemCount: 5),
                                  const SizedBox(width: 8),
                                  Text(
                                    '125 Reviews',
                                    style: St.body11500.copyWith(color: Cl.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: TTButton(
                            onPressed: model.onBookPressed,
                            height: 38,
                            width: 150,
                            backgroundColor: Cl.violet,
                            text: 'Book',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildstar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          RatingBar.builder(
            ignoreGestures: true,
            itemSize: 12,
            initialRating: 5,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 2),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              // print(rating);
            },
          ),
          const Spacer(),
          Text(
            'View all 125 reviews',
            style: St.body13600.copyWith(color: Cl.violet),
          )
        ],
      ),
    );
  }

  Widget buildAVerifiedReview({Color? textColor}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Text(
            'a verified review',
            style: St.body12400.copyWith(color: textColor ?? Cl.grey),
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
