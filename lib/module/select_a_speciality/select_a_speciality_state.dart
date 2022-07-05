part of select_a_speciality;

class _SelectASpecialityViewState extends TTState<_SelectASpecialityModel, _SelectASpecialityView> {
  @override
  Widget buildWithModel(BuildContext context, _SelectASpecialityModel model) {
    return Container(
      height: 769 + device.padding.bottom,
      color: Cl.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TTTitleBottomSheet(
              text: 'Select a speciality',
              onPressed: model.onBackPressed,
            ),
            const SizedBox(height: 35),
            Text(
              'Popular specialties',
              style: St.body10700.copyWith(color: Cl.orange),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (_, i) {
                  return const Text('Dog Specialist');
                },
                itemCount: 100,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'All specialties',
              style: St.body10700.copyWith(color: Cl.orange),
            ),
            Flexible(
              child: ListView.builder(
                itemBuilder: (_, i) {
                  return const Text('Veterinarian');
                },
                itemCount: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
