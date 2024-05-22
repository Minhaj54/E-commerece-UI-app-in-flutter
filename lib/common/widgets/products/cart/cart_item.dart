import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_image.dart';
import '../../text/product_title_text.dart';
import '../../text/t_brand_title_with_verified_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image
        TRoundedImage(
          imageUrl: TImages.fruitsBanner,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSize.sm),
          backgroundColor: THelperFunctions.isDarkMood(context) ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSize.spaceBtwItems,),

        // Title, Price & Size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TBrandTitleWithVerifiedIcon(title: 'A to Z Mall'),
            const Flexible(child: TProductTitleText(title: 'Black Sports shoes',  maxLines: 1,)),

            // Attributes
            Text.rich(
              TextSpan(
                  children: [
                    TextSpan(
                        text: 'Color ',style: Theme.of(context).textTheme.bodySmall
                    ),
                    TextSpan(
                        text: 'Green ',style: Theme.of(context).textTheme.bodyLarge
                    ),
                    TextSpan(
                        text: ' Size ',style: Theme.of(context).textTheme.bodySmall
                    ),
                    TextSpan(
                        text: 'UK 08 ',style: Theme.of(context).textTheme.bodyLarge
                    ),
                  ]
              ),
            )
          ],
        ),
      ],
    );
  }
}
