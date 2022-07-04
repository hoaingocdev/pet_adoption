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
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: IconButton(
                      onPressed: model.onBackPressed,
                      icon: const Icon(
                        Icons.close,
                        color: Cl.violet,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Text(
                      'Select a speciality',
                      style: St.body18700.copyWith(color: Cl.black),
                    ),
                  ),
                )
              ],
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
