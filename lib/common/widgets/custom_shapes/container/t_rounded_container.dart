import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer(
      {super.key,
      this.child,
      this.width,
      this.margin,
      this.padding,
      this.showBorder = false,
      this.radius = TSize.cardRadiusLg,
      this.backgroundColor = TColors.white,
      this.borderColor = TColors.borderPrimary, this.height});

  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool showBorder;
  final double radius;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder
              ? Border.all(
                  color: borderColor,
                )
              : null),
      child: child,
    );
  }
}
