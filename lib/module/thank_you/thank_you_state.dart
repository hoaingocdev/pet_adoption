part of thank_you;

class _ThankYouViewState extends TTState<_ThankYouModel, _ThankYouView> {
  @override
  Widget buildWithModel(BuildContext context, _ThankYouModel model) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Cl.cl4552CB,
              Cl.violet,
            ],
            begin: Alignment.topLeft,
            end: Alignment.center,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 68),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 124 + device.padding.top),
                  height: 114,
                  width: 114,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Cl.white,
                  ),
                  child: Image.asset(Id.ic_check_big),
                ),
              ),
              const SizedBox(height: 78),
              Text(
                'Your appointment has been booked',
                style: St.body24700.copyWith(color: Cl.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'Vasilenko Oksana will be waiting for you and your pet',
                style: St.body16400.copyWith(color: Cl.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              TTButton(
                backgroundColor: Cl.cl472DA4.withOpacity(0.6),
                height: 32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Id.ic_clock),
                    Text(
                      'Wed 9 Sep at 10:30 am',
                      style: St.body14600.copyWith(color: Cl.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '+ Add appointment to calendar',
                style: St.body11500.copyWith(color: Cl.lightGrey),
              ),
              const Spacer(),
              TTButton(
                onPressed: model.onMyAppointments,
                height: 46,
                borderColor: Cl.white,
                text: 'Go to my appointments',
              ),
              const SizedBox(
                height: 161,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
