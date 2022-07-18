part of booking_confirmation;

class _BookingConfirmationViewState extends TTState<_BookingConfirmationModel, _BookingConfirmationView> {
  @override
  Widget buildWithModel(BuildContext context, _BookingConfirmationModel model) {
    return Container(
      height: 427 + device.padding.bottom,
      color: Cl.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            buildTitle(model),
            const SizedBox(height: 28),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(
                    'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
                    height: 96,
                    width: 96,
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alekseenko Vasily ',
                      style: St.body18700.copyWith(color: Cl.black),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Veterinary Dentist',
                      style: St.body14600.copyWith(color: Cl.black),
                    ),
                    const SizedBox(height: 7),
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
              ],
            ),
            const SizedBox(height: 24),
            InkWell(
              onTap: model.onDatePressed,
              child: Container(
                color: Colors.transparent,
                height: 54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date',
                      style: St.body13600.copyWith(color: Cl.grey),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            DatetimeUtils.dateFormat(model.dob),
                            style: St.body16400.copyWith(color: Cl.black),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Cl.grey,
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      color: Cl.clF0F0F8,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 30,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (_, i) => const SizedBox(width: 8),
                itemCount: 10,
                itemBuilder: (_, i) {
                  return TTListTime(
                    dateTime: model.times[i],
                    onPressed: () => model.onTimeSelectedPressed(i),
                    isSelected: i == model.isTimeSelected,
                  );
                },
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Text(
                  '\$20',
                  style: St.body24700.copyWith(color: Cl.black),
                ),
                Text(
                  ' / first visit',
                  style: St.body16400.copyWith(color: Cl.black),
                ),
                const SizedBox(width: 45),
                Expanded(
                  child: TTButton(
                    onPressed: model.onBookPressed,
                    // width: 168,
                    height: 38,
                    text: 'Book',
                    backgroundColor: Cl.violet,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildTitle(_BookingConfirmationModel model) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 38),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Booking confirmation',
              style: St.body18700.copyWith(color: Cl.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 28, left: 23),
          child: Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: model.onClosePressed,
              icon: const Icon(
                Icons.close,
                color: Cl.violet,
                size: 25,
              ),
            ),
          ),
        )
      ],
    );
  }
}
