part of add_pet_detail_info;

class LsGeneralInformation extends StatelessWidget {
  final String text;
  final String title;
  final Function(PetInfo)? onPetSelected;
  final Function(BreedInfo)? onBreedtSelected;
  final Function(SizeInfo)? onSizeSelected;
  final List<dynamic> list;

  const LsGeneralInformation({
    Key? key,
    required this.text,
    required this.title,
    this.onPetSelected,
    required this.list,
    this.onBreedtSelected,
    this.onSizeSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_AddPetDetailInfoModel>();

    return PopupMenuButton(
      offset: const Offset(100, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: St.body13600.copyWith(color: Cl.grey),
          ),
          Row(
            children: [
              Text(text),
              const Spacer(),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Cl.grey,
                ),
              ),
            ],
          ),
          Container(
            height: 1,
            color: Cl.clF0F0F8,
          )
        ],
      ),
      itemBuilder: (_) {
        return List.generate(list.length, (index) {
          final item = list[index];
          return PopupMenuItem(
            child: Text(item.valueDisplay),
            value: item,
          );
        });
      },
      onSelected: (value) {
        if (value is PetInfo) {
          onPetSelected?.call(value);
        }
        if (value is BreedInfo) {
          onBreedtSelected?.call(value);
        }
        if (value is SizeInfo) {
          onSizeSelected?.call(value);
        }
      },
    );
  }
}
