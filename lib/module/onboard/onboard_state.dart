part of onboard;

class _OnboardViewState extends TTState<_OnboardModel, _OnboardView> {
  late bool? isSelected;
  @override
  Widget buildWithModel(BuildContext context, _OnboardModel model) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Cl.clF9F8FD,
              Cl.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 20,
                  top: 13 + MediaQuery.of(context).padding.top,
                ),
                child: Text(
                  'Sign In',
                  style: St.body13600.copyWith(color: Cl.violet),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView(
                    onPageChanged: model.onPageChanged,
                    controller: model.pageController,
                    children: [
                      buildBackground(
                        text: 'All types of services for your pet in oneplace, instantly searchable.',
                        title: 'Welcome to Pet Care',
                        imageAsset: Id.img_background1,
                      ),
                      buildBackground(
                        text: 'We interview every specialist befor they get to work.',
                        title: 'Proven experts',
                        imageAsset: Id.img_background2,
                        padding: 0,
                      ),
                      buildBackground(
                        text: 'A review can be left only by a user who used the service',
                        title: 'Reliable reviews',
                        imageAsset: Id.img_background3,
                        padding: 47,
                      ),
                    ],
                  ),
                  Positioned(
                    top: MediaQuery.of(context).padding.top + 372,
                    child: AnimatedSmoothIndicator(
                      duration: const Duration(milliseconds: 500),
                      activeIndex: model.index,
                      count: 3,
                      axisDirection: Axis.horizontal,
                      effect: const WormEffect(
                        spacing: 10,
                        radius: 4,
                        dotWidth: 8,
                        dotHeight: 8,
                        paintStyle: PaintingStyle.fill,
                        strokeWidth: 1.5,
                        dotColor: Cl.clE6E6F6,
                        activeDotColor: Cl.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 57),
              child: TTButton(
                width: double.infinity,
                onPressed: model.onNextPressed,
                backgroundColor: Cl.violet,
                child: Center(
                  child: Text(
                    model.index == 2 ? 'Get started' : 'Next',
                    style: St.body16700.copyWith(color: Cl.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot({
    required _OnboardModel model,
  }) {
    return DotsIndicator(
      dotsCount: 3,
      position: model.index.toDouble(),
      decorator: DotsDecorator(
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Cl.clE6E6F6, // Inactive color
        activeColor: Cl.orange,
      ),
    );
  }

  Widget buildBackground({
    required String title,
    required String text,
    required String imageAsset,
    double padding = 25,
  }) {
    return Padding(
      padding: EdgeInsets.only(top: padding),
      child: Column(
        children: [
          Image.asset(imageAsset),
          const SizedBox(height: 57),
          Text(
            title,
            style: St.body24700.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 12),
          Text(
            text,
            style: St.body16400.copyWith(
              color: Cl.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
