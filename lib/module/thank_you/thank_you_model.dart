part of thank_you;

class _ThankYouModel extends TTChangeNotifier<_ThankYouView> {
  void onMyAppointments() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createAppointments();
    }));
  }
}
