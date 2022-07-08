part of veterinary_card;

class UsedInfo extends StatelessWidget {
  const UsedInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Biography',
            style: St.body18700.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 16),
          Text(
            'Alekseenko Vasily Vasilyevich, born in 1974 Master of Veterinary MedicineLeading doctor Veterinary clinic "Alden-Vet"Specialization: clinical diagnostics, surgery vet, dentist',
            maxLines: 5,
            overflow: TextOverflow.clip,
            style: St.body12400.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 24),
          Text(
            'Education',
            style: St.body18700.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 16),
          Text(
            'Before entering the agricultural Academy he worked at the department of surgery of the veterinary faculty (1991-1992). He graduated from the Faculty of Veterinary Medicine of NAU in 1997. He defended his thesis at the Department of Surgery on the topic: "Surgery on the urinary organs of cats." Scientific advisor prof. Borisevich V.B. In 1998 graduated from the Magistracy.',
            style: St.body12400.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 24),
          Text(
            'Professional experience',
            style: St.body18700.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 16),
          buildProfessioalExperiennceItem(
            text:
                'Repeated participant and winner of the International Conferences, reports on the topic: “Iatrogenic pathology in urology”, “Foreign bodies of the gastrointestinal tract in small domestic animals” ',
          ),
          const SizedBox(height: 16),
          buildProfessioalExperiennceItem(
            text: 'From 1998 to 2001, he was the chief physician of the Equus veterinary medicine clinic.',
          ),
          const SizedBox(height: 16),
          buildProfessioalExperiennceItem(
            text:
                'Constantly increases the level of his qualifications, attending international conferences, congresses, workshops on veterinary services for small pets.,',
          ),
          const SizedBox(height: 16),
          buildProfessioalExperiennceItem(
            text:
                'Since 2006, the leading doctor of veterinary care "UCCA". At the same time, she continues to conduct reception at the Equus veterinary medicine clinic, where he has been working since 1997.',
          ),
          const SizedBox(height: 24),
          Text(
            'Personal information',
            style: St.body18700.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 16),
          Text(
            'Candidate master of sports in equestrian sport (dressage). Favorite breed of dog is German Shepherd. He is married, has two children: daughter Alika and son Timur.,',
            maxLines: 5,
            overflow: TextOverflow.clip,
            style: St.body12400.copyWith(color: Cl.black),
          ),
        ],
      ),
    );
  }

  Widget buildProfessioalExperiennceItem({
    required String text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 8,
          width: 8,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Cl.orange,
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            text,
            style: St.body12400.copyWith(color: Cl.black),
          ),
        )
      ],
    );
  }
}
