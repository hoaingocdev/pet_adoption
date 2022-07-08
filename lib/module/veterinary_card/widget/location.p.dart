part of veterinary_card;

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      // height: 202,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Cl.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: Row(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Cl.clF0F0F8),
                  child: Center(
                    child: Image.asset(Id.ic_work),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  children: [
                    Text(
                      'Veterinary clinic "Alden-Vet"',
                      style: St.body14600.copyWith(color: Cl.black),
                    ),
                    Text(
                      '141 N Union Ave, Los Angeles, CA',
                      style: St.body12400.copyWith(color: Cl.black),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 6, right: 6, bottom: 6),
            height: 150,
            color: Cl.black,
          )
        ],
      ),
    );
  }
}
