import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/common/widgets/text/t_brand_title_text.dart';
import 'package:rehla_mart/utils/constants/enums.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        ),
        const SizedBox(
          width: TSize.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: TColors.primary,
          size: TSize.md,
        )
      ],
    );
  }
}
