import 'package:flutter/material.dart';
import 'package:rehla_mart/common/widgets/custom_shapes/container/t_rounded_container.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../utils/constants/enums.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../widgets/images/t_circular_image.dart';
import '../widgets/text/t_brand_title_with_verified_icon.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMood(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSize.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icon
             const Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: TImages.grocery,
                backgroundColor: Colors.transparent,
                //  overlayColor: THelperFunctions.isDarkMood(context) ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox(
              width: TSize.spaceBtwItems / 2,
            ),
            // Text
            Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const TBrandTitleWithVerifiedIcon(
                  title: "A to Z Mall",
                  brandTextSize: TextSizes.large,
                ),
                Text(
                  '256 Products',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

