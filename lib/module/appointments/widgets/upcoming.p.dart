part of appointments;

class Upcoming extends StatelessWidget {
  final VoidCallback? onEditPressed;
  final VoidCallback? onCencelPressed;
  final AppointmentInfo appointmentInfo;

  const Upcoming({
    Key? key,
    this.onEditPressed,
    this.onCencelPressed,
    required this.appointmentInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 318,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Cl.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 3),
            blurRadius: 28,
            color: Cl.cl2E1E7A.withOpacity(0.1),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 16, 24),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    appointmentInfo.imageUrl,
                    width: 88,
                    height: 88,
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appointmentInfo.name,
                      style: St.body18700.copyWith(color: Cl.black),
                    ),
                    Text(
                      appointmentInfo.major,
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
                        const SizedBox(width: 8),
                        Text(
                          appointmentInfo.reviewCountDisplay.toString(),
                          style: St.body11500.copyWith(color: Cl.grey),
                        )
                      ],
                    ),
                    const SizedBox(height: 11),
                    Row(
                      children: [
                        builItem(imageAsset: Id.ic_map),
                        const SizedBox(width: 8),
                        Text(
                          appointmentInfo.distanceDisplay.toString(),
                          style: St.body11500.copyWith(color: Cl.black),
                        ),
                        const SizedBox(width: 10),
                        builItem(imageAsset: Id.ic_wallet),
                        const SizedBox(width: 8),
                        Text(
                          appointmentInfo.feeDisplay.toString(),
                          style: St.body11500.copyWith(color: Cl.black),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          buildWorkingTime(appointmentInfo: appointmentInfo),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TTButton(
                  onPressed: onEditPressed,
                  width: 140,
                  height: 34,
                  backgroundColor: Cl.violet,
                  child: Center(
                    child: Text(
                      'Edit',
                      style: St.body16700.copyWith(color: Cl.white),
                    ),
                  ),
                ),
                TTButton(
                  onPressed: onCencelPressed,
                  width: 140,
                  height: 34,
                  backgroundColor: Cl.clF0F0F8,
                  child: Center(
                    child: Text(
                      'Cencel',
                      style: St.body16700.copyWith(color: Cl.black),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildWorkingTime({
    required AppointmentInfo appointmentInfo,
  }) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 112,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Cl.lightGrey,
      ),
      child: Column(children: [
        Row(
          children: [
            builItem(
              imageAsset: Id.ic_work,
              width: 36,
              height: 36,
            ),
            const SizedBox(width: 16),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appointmentInfo.clinic,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: St.body14600.copyWith(color: Cl.black),
                  ),
                  Text(
                    appointmentInfo.address,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: St.body12400.copyWith(color: Cl.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            builItem(
              imageAsset: Id.ic_clock_black,
              width: 36,
              height: 36,
            ),
            const SizedBox(width: 16),
            Text(
              appointmentInfo.time,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: St.body12400.copyWith(color: Cl.black),
            ),
          ],
        )
      ]),
    );
  }

  Widget builItem({
    double? height,
    double? width,
    required String imageAsset,
  }) {
    return Container(
      height: height ?? 24,
      width: width ?? 24,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Cl.clF0F0F8,
      ),
      child: Image.asset(imageAsset),
    );
  }
}
