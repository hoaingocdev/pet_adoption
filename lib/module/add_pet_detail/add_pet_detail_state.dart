part of add_pet_detail;

class _AddPetDetailViewState extends TTState<_AddPetDetailModel, _AddPetDetailView> {
  @override
  Widget buildWithModel(BuildContext context, _AddPetDetailModel model) {
    return SizedBox(
      height: 375,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 33, left: 18),
            child: Row(
              children: [
                Image.asset(Id.ic_close),
                const SizedBox(width: 100),
                Text(
                  'Add pet detail',
                  style: St.body18700.copyWith(color: Cl.black),
                ),
              ],
            ),
          ),
          const SizedBox(height: 35),
          buildContent(text: 'Faster check-in at appointment.'),
          const SizedBox(height: 29),
          buildContent(text: 'Schedule of vaccination, haircuts, inspections etc.'),
          const SizedBox(height: 29),
          buildContent(text: 'Reminder of the upcoming events with your pet.'),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TTButton(
                  onPressed: model.onAddPressed,
                  height: 46,
                  width: 150,
                  backgroundColor: Cl.violet,
                  text: '+ Add',
                ),
                TTButton(
                  onPressed: model.onNoLaterPressed,
                  height: 46,
                  width: 150,
                  backgroundColor: Cl.clF0F0F8,
                  child: Text(
                    'No, later',
                    style: St.body16700.copyWith(color: Cl.black),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildContent({
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 42),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 8,
            width: 8,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Cl.orange,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: St.body16400.copyWith(color: Cl.black),
              // textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
