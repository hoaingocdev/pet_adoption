import 'package:flutter/material.dart';
import 'package:pet_adoption/res/res.dart';

class TTBackgroundWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final VoidCallback? onPagePressed;

  final double? height;
  final double? top;
  final String text2;
  final String text1;
  final double heightSpace;

  const TTBackgroundWidget({
    Key? key,
    required this.title,
    this.onPressed,
    this.height,
    this.top,
    required this.text2,
    this.onPagePressed,
    required this.heightSpace,
    required this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Cl.clF9F8FD,
            Cl.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: top ?? 5),
                  width: double.infinity,
                  height: height,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Cl.cl4596EA,
                        Cl.cl4552CB,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 0.5],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: onPressed,
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Cl.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          title,
                          style: St.body34700.copyWith(color: Cl.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: heightSpace),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 1,
                        width: 92,
                        color: Cl.clF0F0F8,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'or continue with',
                        style: St.body16400.copyWith(color: Cl.black),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        height: 1,
                        width: 92,
                        color: Cl.clF0F0F8,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 11),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 104),
                  child: Row(
                    children: [
                      Image.asset(Id.ic_facebook),
                      const SizedBox(width: 55),
                      Image.asset(Id.ic_gg_red),
                    ],
                  ),
                ),
                const SizedBox(height: 105),
                InkWell(
                  onTap: onPagePressed,
                  child: RichText(
                    text: TextSpan(
                      text: text1,
                      style: St.body16400.copyWith(
                        color: Cl.black,
                      ),
                      children: [
                        TextSpan(
                          text: text2,
                          style: St.body16700.copyWith(
                            color: Cl.violet,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
