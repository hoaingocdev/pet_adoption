part of selected_a_date;

class _SelectedADateViewState extends TTState<_SelectedADateModel, _SelectedADateView> {
  @override
  Widget buildWithModel(BuildContext context, _SelectedADateModel model) {
    return Material(
      child: Container(
        height: 377 + device.padding.bottom,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            color: Cl.white),
        child: Column(
          children: [
            TTTitleBottomSheet(
              text: 'Select a date',
              onPressed: model.onClosePagePressed,
            ),
            SizedBox(
              height: 150,
              child: CupertinoDatePicker(
                use24hFormat: true,
                initialDateTime: DateTime.now(),
                onDateTimeChanged: (val) {
                  setState(() {});
                },
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TTButton(
                    onPressed: model.onShow124ResultsPressed,
                    width: 160,
                    backgroundColor: Cl.violet,
                    text: 'Show 124 results ',
                  ),
                  TTButton(
                    onPressed: model.onSkipPressed,
                    width: 160,
                    backgroundColor: Cl.clF0F0F8,
                    text: 'Skip',
                    textColor: Cl.black,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

    // Column(
    //   children: const [
    //     TTTitleBottomSheet(
    //       text: 'Select a date',
    //     ),

    //   ],
    // ),
  }
}
