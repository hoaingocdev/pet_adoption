part of add_pet_detail_info;

class Reminders extends StatelessWidget {
  const Reminders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_AddPetDetailInfoModel>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reminders',
          style: St.body24700.copyWith(color: Cl.black),
        ),
        Text(
          'Add vaccines, haircuts, pills, estrus, etc. and you will receive notifications for the next event.',
          style: St.body16400.copyWith(color: Cl.black),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 144,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, i) => const SizedBox(width: 16),
            itemCount: model.reminders.length,
            itemBuilder: (_, i) {
              if (i == 0) {
                return builItem1();
              }
              return builItem2(
                remindersInfo: model.reminders[i],
              );
            },
          ),
        ),
        const SizedBox(height: 30)
      ],
    );
  }

  Widget builItem2({required RemindersInfo remindersInfo}) {
    return Container(
      height: 144,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Cl.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Id.ic_compound_path),
          const SizedBox(height: 16),
          Text(
            remindersInfo.typeVaccine,
            style: St.body13600.copyWith(color: Cl.black),
          ),
          Text(
            remindersInfo.vaccinationTime,
            style: St.body12400.copyWith(color: Cl.grey),
          )
        ],
      ),
    );
  }

  Widget builItem1() {
    return Container(
      height: 144,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Cl.clF0F0F8,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Cl.violet,
            ),
            child: Image.asset(Id.ic_plus),
          ),
          const SizedBox(height: 10),
          Text(
            'Add event',
            style: St.body14600.copyWith(color: Cl.black),
          )
        ],
      ),
    );
  }
}
