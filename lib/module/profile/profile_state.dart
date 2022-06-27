part of profile;

class _ProfileViewState extends TTState<_ProfileModel, _ProfileView> {
  @override
  Widget buildWithModel(BuildContext context, _ProfileModel model) {
    return const Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
