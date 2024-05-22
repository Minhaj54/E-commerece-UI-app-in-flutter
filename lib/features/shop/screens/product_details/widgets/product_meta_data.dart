import 'package:flutter/material.dart';
import 'package:rehla_mart/common/widgets/images/t_circular_image.dart';
import 'package:rehla_mart/common/widgets/text/product_title_text.dart';
import 'package:rehla_mart/common/widgets/text/t_brand_title_with_verified_icon.dart';
import 'package:rehla_mart/common/widgets/text/t_product_price_title.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/container/t_rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMood(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            // Sale Tag
            TRoundedContainer(
                radius: TSize.sm,
                backgroundColor: TColors.secondary.withOpacity(0.8),
                padding: const EdgeInsets.symmetric(
                    horizontal: TSize.sm, vertical: TSize.xs),
                child: Text(
                  '25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black),
                )),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),

            //Price
            Text(
              '₹570',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            const TProductPriceText(
              price: '370',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 1.5,
        ),

        /// Title
        const TProductTitleText(
          title: 'Fresh Fruits',
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 2,
        ),

        /// Stock Status
        Row(
          children: [
            const TProductTitleText(
              title: 'Status',
            ),
            const SizedBox(width: TSize.spaceBtwItems),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 1.5,
        ),

        /// Brand
        const Row(
          children: [
            TCircularImage(
                image: TImages.grocery,
                width: 32,
                height: 32,
               // overlayColor: darkMode ? TColors.white : TColors.black
            ),
            TBrandTitleWithVerifiedIcon(
              title: 'A to Z Mall',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
