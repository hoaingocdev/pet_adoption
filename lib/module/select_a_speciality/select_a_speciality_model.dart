part of select_a_speciality;

class _SelectASpecialityModel extends TTChangeNotifier<_SelectASpecialityView> {
  void onBackPressed() {
    Navigator.of(context).pop();
  }
}
