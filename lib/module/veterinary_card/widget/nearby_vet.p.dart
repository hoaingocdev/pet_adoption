part of veterinary_card;

class NearbyVet extends StatelessWidget {
  const NearbyVet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_VeterinaryCardModel>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Nearby vet',
            style: St.body18700.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 140,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, i) => SizedBox(width: 16),
              itemCount: model.nearbyVets.length,
              itemBuilder: (_, i) {
                return Specialists(
                  specialistsInfo: model.nearbyVets[i],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
