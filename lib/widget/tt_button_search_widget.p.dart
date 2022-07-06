import 'package:flutter/material.dart';
import 'package:pet_adoption/res/res.dart';

class TTButtonSearch extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final double? horizotal;
  const TTButtonSearch({
    Key? key,
    this.onPressed,
    this.text,
    this.horizotal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 38,
        padding: const EdgeInsets.only(top: 11, left: 11, bottom: 11),
        margin: EdgeInsets.symmetric(horizontal: horizotal ?? 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Cl.grey,
        ),
        child: Row(
          children: [
            const Icon(Icons.search_rounded),
            Text(
              text ?? ' Veterinary',
              style: St.body14600,
            ),
          ],
        ),
      ),
    );
  }
}
