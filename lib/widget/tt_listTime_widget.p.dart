import 'package:flutter/material.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:pet_adoption/utils/utils.dart';

class TTListTime extends StatelessWidget {
  final DateTime dateTime;
  final VoidCallback? onPressed;
  final bool isSelected;

  const TTListTime({
    Key? key,
    required this.dateTime,
    this.onPressed,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 28,
        width: 68,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isSelected ? Cl.violet : Cl.clF0F0F8,
        ),
        child: Center(
          child: Text(
            DatetimeUtils.timeFormat(dateTime),
            style: St.body14600.copyWith(
              color: isSelected ? Cl.white : Cl.black,
            ),
          ),
        ),
      ),
    );
  }
}
