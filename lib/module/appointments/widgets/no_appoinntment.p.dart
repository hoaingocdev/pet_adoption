part of appointments;

class NoAppoinntment extends StatelessWidget {
  final VoidCallback? onFindASpecialistPressed;
  const NoAppoinntment({Key? key, this.onFindASpecialistPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 94),
        Image.asset(Id.ic_clock_big),
        SizedBox(height: 29),
        Text(
          'No appointments yet',
          style: St.body14600.copyWith(color: Cl.grey),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 67),
          child: TTButton(
            onPressed: onFindASpecialistPressed,
            backgroundColor: Cl.violet,
            text: 'Find a specialist',
          ),
        ),
        SizedBox(height: 58),
      ],
    );
  }
}
