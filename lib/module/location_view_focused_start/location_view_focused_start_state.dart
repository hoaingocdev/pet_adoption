part of location_view_focused_start;

class _LocationViewFocusedStartViewState
    extends TTState<_LocationViewFocusedStartModel, _LocationViewFocusedStartView> {
  @override
  Widget buildWithModel(BuildContext context, _LocationViewFocusedStartModel model) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 9 + device.padding.top,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: model.onBackPressed,
                    icon: const Icon(
                      Icons.close,
                      color: Cl.violet,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    Id.ic_map,
                    color: Cl.violet,
                    height: 24,
                    width: 24,
                  ),
                  Text(
                    'Map',
                    style: St.body13600.copyWith(color: Cl.violet),
                  ),
                  const SizedBox(height: 21),
                ],
              ),
            ),
            const TTButtonSearch(
              horizotal: 0,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 38,
              child: TextField(
                onChanged: model.onSearchChange,
                controller: model.controller,
                cursorColor: Cl.violet,
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    Id.ic_map,
                  ),
                  suffixIcon: ValueListenableBuilder<bool>(
                    valueListenable: model.isShowClear,
                    builder: (context, isShowClear, _) {
                      return isShowClear
                          ? IconButton(
                              icon: Image.asset(
                                Id.ic_close1,
                              ),
                              onPressed: model.onCleared,
                            )
                          : const SizedBox();
                    },
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Cl.violet,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Cl.violet,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            buildListAddress(),
          ],
        ),
      ),
    );
  }

  Widget buildListAddress() {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (_, i) {
          return const SizedBox(height: 5);
        },
        itemCount: model.addesses.length,
        itemBuilder: (_, i) {
          if (i == 0) {
            return Column(
              children: [
                builItem(
                  imageAsset: Id.ic_current_location,
                  text: 'Current location',
                ),
                const SizedBox(height: 16),
                builItem(
                  imageAsset: Id.ic_select_search_area_on_a_map,
                  text: 'Select search area on a map',
                ),
                const SizedBox(height: 21),
                Container(
                  height: 1,
                  color: Cl.grey,
                ),
              ],
            );
          }
          return Row(
            children: [
              Image.asset(Id.ic_map),
              Text(
                model.addesses[i].address,
                style: St.body14400.copyWith(color: Cl.black),
              )
            ],
          );
        },
      ),
    );
  }

  Widget builItem({
    required String imageAsset,
    required String text,
  }) {
    return Row(
      children: [
        Image.asset(imageAsset),
        const SizedBox(width: 8),
        Text(
          text,
          style: St.body16400.copyWith(color: Cl.black),
        ),
      ],
    );
  }
}
