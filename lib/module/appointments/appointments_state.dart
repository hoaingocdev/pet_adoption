part of appointments;

class _AppointmentsViewState extends TTState<_AppointmentsModel, _AppointmentsView> {
  @override
  Widget buildWithModel(BuildContext context, _AppointmentsModel model) {
    final tabIndex = model.tabIndex;
    return Scaffold(
      backgroundColor: Cl.lightGrey,
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              height: 176 + device.padding.top,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(34),
                  bottomRight: Radius.circular(34),
                ),
                color: Cl.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(4, 6),
                    blurRadius: 28,
                    color: Cl.cl2D368A.withOpacity(0.1),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Appointments',
                      style: St.body18700,
                    ),
                  ),
                  const SizedBox(height: 35),
                  builTabBar(model, tabIndex),
                ],
              ),
            ),
            buildTabBarView()
          ],
        ),
      ),
    );
  }

  Widget buildTabBarView() {
    return Expanded(
      child: TabBarView(
        children: [
          ListView.separated(
            separatorBuilder: (_, i) {
              return const SizedBox(height: 10);
            },
            itemCount: 100,
            itemBuilder: (_, i) {
              return PersonInformation(
                onCencelPressed: model.onCenCelPressed,
                onEditPressed: model.onEditPressed,
              );
            },
          ),
          NoAppoinntment(
            onFindASpecialistPressed: model.onFindASpecialistPressed,
          ),
        ],
      ),
    );
  }

  Widget builTabBar(_AppointmentsModel model, int tabIndex) {
    return Container(
      height: 38,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Cl.grey),
      ),
      child: TabBar(
        indicatorColor: Colors.transparent,
        labelPadding: EdgeInsets.zero,
        indicator: const BoxDecoration(),
        indicatorWeight: 0,
        onTap: model.onTabChanged,

        // indicatorWeight: 0,
        tabs: [
          Tab(
            child: TTButton(
              backgroundColor: tabIndex == 0 ? Cl.violet : Cl.white,
              child: Center(
                child: Text(
                  'Upcoming',
                  style: St.body16600.copyWith(
                    color: tabIndex == 0 ? Cl.white : Cl.black,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: TTButton(
              backgroundColor: tabIndex == 1 ? Cl.violet : Cl.white,
              child: Center(
                child: Text(
                  'Past',
                  style: St.body16600.copyWith(
                    color: tabIndex == 1 ? Cl.white : Cl.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
