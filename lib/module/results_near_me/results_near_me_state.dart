part of results_near_me;

class _ResultsNearMeViewState extends TTState<_ResultsNearMeModel, _ResultsNearMeView> {
  @override
  Widget buildWithModel(BuildContext context, _ResultsNearMeModel model) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Cl.lightGrey,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              height: 196 + device.padding.top,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Cl.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(4, 6),
                    blurRadius: 28,
                    color: Cl.cl2D368A.withOpacity(0.2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: model.onBackPressed,
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Cl.violet,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TTTabBar(
                          text1: 'Specialists',
                          text2: 'Clinics',
                          // horizontal: 40,
                          onPressed: model.onPagePressed,
                          tabIndex: model.tabIndex,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Image.asset(
                        Id.ic_map,
                        color: Cl.violet,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'Map',
                          style: St.body13600.copyWith(color: Cl.violet),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 38,
                    padding: EdgeInsets.only(top: 11, left: 11, bottom: 11),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Cl.grey,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search_rounded),
                        Text(
                          ' Veterinary',
                          style: St.body14600,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TTButton(
                          width: 91,
                          height: 28,
                          borderRadius: 6,
                          backgroundColor: Cl.violet,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(Id.ic_calendar),
                              SizedBox(width: 11),
                              Text(
                                '9 Sep',
                                style: St.body14600.copyWith(color: Cl.white),
                              )
                            ],
                          ),
                        ),
                        TTButton(
                          onPressed: model.onDentistPressed,
                          width: 91,
                          height: 28,
                          borderRadius: 6,
                          backgroundColor: Cl.violet,
                          text: 'Dentist',
                        ),
                        TTButton(
                          width: 91,
                          height: 28,
                          borderRadius: 6,
                          backgroundColor: Cl.clF0F0F8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(Id.ic_fillter),
                              SizedBox(width: 11),
                              Text(
                                'Filter',
                                style: St.body14600.copyWith(color: Cl.black),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    color: Cl.violet,
                  ),
                  Container(
                    color: Cl.violet,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
