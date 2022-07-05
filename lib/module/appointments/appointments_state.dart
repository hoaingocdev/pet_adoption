part of appointments;

class _AppointmentsViewState extends TTState<_AppointmentsModel, _AppointmentsView> {
  @override
  Widget buildWithModel(BuildContext context, _AppointmentsModel model) {
    return Scaffold(
      backgroundColor: Cl.lightGrey,
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              // height: 136 + device.padding.top,
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
                  Padding(
                    padding: EdgeInsets.only(top: 9 + device.padding.top),
                    child: Center(
                      child: Text(
                        'Appointments',
                        style: St.body18700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TTTabBar(
                    text1: 'Upcoming',
                    text2: 'Past',
                    tabIndex: model.tabIndex,
                    onPressed: model.onTabChanged,
                  ),
                  const SizedBox(height: 26)
                ],
              ),
            ),
            // SizedBox(height: 32),
            buildTabBarView(),
          ],
        ),
      ),
    );
  }

  Widget buildTabBarView() {
    return Expanded(
      child: TabBarView(
        children: [
          builUpcoming(),
          buildPast(),
          // NoAppoinntment(
          //   onFindASpecialistPressed: model.onFindASpecialistPressed,
          // ),
        ],
      ),
    );
  }

  Widget buildPast() {
    if (model.lsPast.isEmpty) {
      return const NoAppoinntment();
    }
    return ListView.separated(
      separatorBuilder: (_, i) {
        return const SizedBox(height: 10);
      },
      itemCount: model.lsPast.length,
      itemBuilder: (_, i) {
        return Past(appointmentInfo: model.lsPast[i]);
      },
    );
  }

  Widget builUpcoming() {
    if (model.lsUpcoming.isEmpty) {
      return const NoAppoinntment();
    }
    return ListView.separated(
      separatorBuilder: (_, i) {
        return const SizedBox(height: 10);
      },
      itemCount: model.lsUpcoming.length,
      itemBuilder: (_, i) {
        return Upcoming(
          appointmentInfo: model.lsUpcoming[i],
          onCencelPressed: model.onCenCelPressed,
          onEditPressed: model.onEditPressed,
        );
      },
    );
  }
}
