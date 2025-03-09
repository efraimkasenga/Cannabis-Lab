import 'dart:ui';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color? color;
  final bool outlined, circular;
  final Widget child;
  final double? height, width;
  final Clip clipBehavior;
  final double left,
      top,
      right,
      bottom,
      paddingAll,
      paddingHorizontal,
      paddingVertical,
      mleft,
      mtop,
      mright,
      mbottom,
      marginAll,
      marginHorizontal,
      marginVertical;

  const CustomContainer({
    super.key,
    this.color,
    this.height,
    this.width,
    this.circular = false,
    this.outlined = false,
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
    this.top = 0,
    this.paddingAll = 0,
    this.paddingHorizontal = 0,
    this.paddingVertical = 0,
    this.mbottom = 0,
    this.mleft = 0,
    this.mright = 0,
    this.mtop = 0,
    this.marginAll = 0,
    this.marginHorizontal = 0,
    this.marginVertical = 0,
    this.clipBehavior = Clip.none,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: clipBehavior,
      height: height,
      width: width,
      padding: paddingAll != 0
          ? EdgeInsets.all(paddingAll)
          : paddingHorizontal != 0 || paddingVertical != 0
              ? EdgeInsets.symmetric(
                  horizontal: paddingHorizontal, vertical: paddingVertical)
              : EdgeInsets.fromLTRB(left, top, right, bottom),
      margin: marginAll != 0
          ? EdgeInsets.all(marginAll)
          : marginHorizontal != 0 || marginVertical != 0
              ? EdgeInsets.symmetric(
                  horizontal: marginHorizontal, vertical: marginVertical)
              : EdgeInsets.fromLTRB(mleft, mtop, mright, mbottom),
      decoration: BoxDecoration(
        color: outlined ? null : color,
        border: outlined
            ? Border.all(color: color ?? Colors.transparent, width: 0.5)
            : null,
        shape: circular ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: !circular ? BorderRadius.circular(24) : null,
      ),
      child: Center(child: child),
    );
  }
}
