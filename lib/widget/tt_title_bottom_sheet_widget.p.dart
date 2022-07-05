import 'package:flutter/material.dart';
import 'package:pet_adoption/res/res.dart';

class TTTitleBottomSheet extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const TTTitleBottomSheet({Key? key, this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 36),
            child: IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.close,
                color: Cl.violet,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Text(
              text,
              style: St.body18700.copyWith(color: Cl.black),
            ),
          ),
        )
      ],
    );
  }
}
