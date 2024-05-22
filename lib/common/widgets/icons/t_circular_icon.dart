import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
    this.size = TSize.lg,
  });

  final double? width, height,size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:  backgroundColor != null ? backgroundColor! : THelperFunctions.isDarkMood(context) ? TColors.black.withOpacity(0.9) : TColors.white.withOpacity(0.9),
      ),
      child: Center(child: IconButton(onPressed: onPressed, icon: Icon(icon,color: color, size: size,))),
    );
  }
}
