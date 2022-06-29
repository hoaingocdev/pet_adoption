part of appointments;

class NoAppoinntment extends StatelessWidget {
  final VoidCallback? onFindASpecialistPressed;
  const NoAppoinntment({Key? key, this.onFindASpecialistPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 94),
        Image.asset(Id.ic_clock_big),
        const SizedBox(height: 29),
        Text(
          'No appointments yet',
          style: St.body14600.copyWith(color: Cl.grey),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 67),
          child: TTButton(
            onPressed: onFindASpecialistPressed,
            backgroundColor: Cl.violet,
            text: 'Find a specialist',
          ),
        ),
        const SizedBox(height: 58),
      ],
    );
  }
}
