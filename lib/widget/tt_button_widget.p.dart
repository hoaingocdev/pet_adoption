import 'package:flutter/material.dart';
import 'package:pet_adoption/res/color.p.dart';
import 'package:pet_adoption/res/style.p.dart';

class TTButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final bool hasShadow;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;

  final double height;
  final double borderRadius;
  final Color shadowColor;
  final VoidCallback? onPressed;
  final double? width;
  const TTButton({
    Key? key,
    this.text,
    this.child,
    this.borderColor,
    this.hasShadow = false,
    this.height = 46,
    this.borderRadius = 24,
    this.onPressed,
    this.width,
    this.backgroundColor,
    this.shadowColor = Colors.transparent,
    this.textColor,
  }) : super(key: key);

  factory TTButton.shadow(
      {String? text,
      Color? borderColor,
      Color? shadowColor,
      double? borderRadius,
      double? height,
      double? width,
      Widget? child,
      Color? backgroundColor,
      VoidCallback? onPressed}) {
    return TTButton(
      backgroundColor: backgroundColor,
      onPressed: onPressed,
      hasShadow: true,
      width: width,
      height: height ?? 46,
      borderRadius: borderRadius ?? 24,
      shadowColor: shadowColor ?? Cl.cl4552CB.withOpacity(0.3),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: borderColor ?? Colors.transparent),
            color: backgroundColor,
            boxShadow: hasShadow
                ? [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 13,
                      color: shadowColor.withOpacity(
                        0.3,
                      ),
                    ),
                  ]
                : [],
          ),
          child: Center(
            child: child ??
                Text(
                  text ?? '',
                  style: St.body16700.copyWith(color: textColor ?? Cl.white),
                ),
          )),
    );
  }
}
