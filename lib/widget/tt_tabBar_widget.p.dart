import 'package:flutter/material.dart';
import 'package:pet_adoption/res/res.dart';
import 'package:pet_adoption/widget/widget.dart';

class TTTabBar extends StatelessWidget {
  final String text1;
  final String text2;
  final int? tabIndex;
  final double? horizontal;
  final Function(int)? onPressed;
  const TTTabBar({
    Key? key,
    this.tabIndex,
    this.onPressed,
    required this.text1,
    required this.text2,
    this.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      margin: EdgeInsets.symmetric(horizontal: horizontal ?? 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Cl.grey),
      ),
      child: TabBar(
        indicatorColor: Colors.transparent,
        labelPadding: EdgeInsets.zero,
        indicator: const BoxDecoration(),
        indicatorWeight: 0,
        onTap: onPressed,

        // indicatorWeight: 0,
        tabs: [
          Tab(
            child: TTButton(
              backgroundColor: tabIndex == 0 ? Cl.violet : Cl.white,
              child: Center(
                child: Text(
                  text1,
                  style: St.body16600.copyWith(
                    color: tabIndex == 0 ? Cl.white : Cl.black,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: TTButton(
              backgroundColor: tabIndex == 1 ? Cl.violet : Cl.white,
              child: Center(
                child: Text(
                  text2,
                  style: St.body16600.copyWith(
                    color: tabIndex == 1 ? Cl.white : Cl.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
