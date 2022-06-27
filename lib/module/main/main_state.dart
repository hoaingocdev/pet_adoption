part of main;

class _MainViewState extends TTState<_MainModel, _MainView> {
  @override
  Widget buildWithModel(BuildContext context, _MainModel model) {
    return Scaffold(
      body: builBody(model),
      bottomNavigationBar: builBottom(model),
    );
  }
}

Widget builBody(_MainModel model) {
  switch (model.pageIndex) {
    case 0:
      return createMainContent();
    case 1:
      return createAppointments();
    case 2:
      return createExplore();
    case 3:
      return createProfile();
    default:
      return const SizedBox();
  }
}

Widget builBottom(_MainModel model) {
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        icon: Image.asset(
          Id.ic_search,
          color: model.pageIndex == 0 ? Cl.violet : Cl.grey,
        ),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          Id.ic_clock,
          color: model.pageIndex == 1 ? Cl.violet : Cl.grey,
        ),
        label: 'Appointments',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          Id.ic_explore,
          color: model.pageIndex == 2 ? Cl.violet : Cl.grey,
        ),
        label: 'Explore',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          Id.ic_profile,
          color: model.pageIndex == 3 ? Cl.violet : Cl.grey,
        ),
        label: 'Profile',
      )
    ],
    type: BottomNavigationBarType.fixed,
    onTap: model.onPagePressed,
    currentIndex: model.pageIndex,
    selectedItemColor: Cl.violet,
    selectedLabelStyle: St.body10500,
    unselectedLabelStyle: St.body10500,
  );
}
