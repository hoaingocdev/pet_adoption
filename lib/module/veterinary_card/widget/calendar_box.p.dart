part of veterinary_card;

class CalendarBox extends StatelessWidget {
  const CalendarBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_VeterinaryCardModel>();

    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 203,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Cl.white,
      ),
      child: Column(
        children: [
          Row(
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
              SizedBox(
                height: 18,
                width: 150,
                child: DropdownButton<DateTime>(
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: Cl.grey,
                  ),
                  value: model.monthSelected,
                  underline: const SizedBox(),
                  onChanged: model.onMonthChange,
                  items: model.months.map<DropdownMenuItem<DateTime>>((DateTime value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(
                        DatetimeUtils.monthFormat(value),
                      ),
                    );
                  }).toList(),
                ),
              ),
              // Text(
              //   'September',
              //   style: St.body14600.copyWith(color: Cl.black),
              //   textAlign: TextAlign.center,
              // ),
            ],
          ),
          SizedBox(
            height: 80,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, i) => const SizedBox(width: 5),
              itemCount: model.dates.length,
              itemBuilder: (_, i) {
                return buildCalendar(
                  dateTime: model.dates[i],
                  onPressed: () => model.onDaySelectedPressed(i),
                  isSelected: i == model.daySelectedIndex,
                  hasEvent: i % 3 == 0,
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 30,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, i) => const SizedBox(width: 8),
              itemCount: model.times.length,
              itemBuilder: (_, i) {
                return TTListTime(
                  dateTime: model.times[i],
                  onPressed: () => model.onTimeSelectedPressed(i),
                  isSelected: i == model.isTimeSelected,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCalendar({
    required DateTime dateTime,
    VoidCallback? onPressed,
    bool isSelected = false,
    bool hasEvent = false,
  }) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 90,
        width: 48,
        child: Column(
          children: [
            const SizedBox(height: 14),
            if (isSelected)
              Container(
                height: 4,
                width: 48,
                color: Cl.violet,
              ),
            const SizedBox(height: 7),
            Text(
              dateTime.day.toString(),
              style: St.body18700.copyWith(color: Cl.violet),
            ),
            const SizedBox(height: 6),
            Text(
              DatetimeUtils.weekdayFormat(dateTime),
              style: St.body12400.copyWith(color: Cl.black),
            ),
            const SizedBox(height: 6),
            if (hasEvent)
              Container(
                height: 6,
                width: 6,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Cl.violet,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
