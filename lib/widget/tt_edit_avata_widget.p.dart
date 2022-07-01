import 'package:flutter/material.dart';
import 'package:pet_adoption/res/res.dart';

class TTEditAvataWidget extends StatelessWidget {
  final String imageUrl;
  const TTEditAvataWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(56),
            child: Image.network(
              imageUrl,
              height: 112,
              width: 112,
            ),
          ),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Cl.violet,
            ),
            child: Image.asset(Id.ic_plus),
          )
        ],
      ),
    );
  }
}
