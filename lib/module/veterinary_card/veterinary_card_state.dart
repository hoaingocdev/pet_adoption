part of veterinary_card;

class _VeterinaryCardViewState extends TTState<_VeterinaryCardModel, _VeterinaryCardView> {
  @override
  Widget buildWithModel(BuildContext context, _VeterinaryCardModel model) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
                  height: 420 + device.padding.top,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5 + device.padding.top,
                    left: 14,
                    right: 15,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: model.onBackPressed,
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Cl.white,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: Image.asset(Id.ic_share),
                        onPressed: model.onSharePressed,
                      ),
                      const SizedBox(width: 17),
                      IconButton(
                        icon: Image.asset(Id.ic_favourite),
                        onPressed: model.onFavouritePressed,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                '“He was friendly and diligent in getting to the right diagnosis and presciption.” ',
                style: St.body16400,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'a verified review',
                    style: St.body12400.copyWith(color: Cl.grey),
                  ),
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
            ),
            const SizedBox(height: 12),
            Padding(
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
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.only(top: 16, left: 16),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 203,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Cl.white,
              ),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Cl.lightGrey,
                    ),
                    child: Image.asset(
                      Id.ic_calendar,
                      color: Cl.black,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'September',
                    style: St.body14600.copyWith(color: Cl.black),
                    textAlign: TextAlign.center,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                      color: Cl.grey,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 27),
          ],
        ),
      ),
    );
  }
}
