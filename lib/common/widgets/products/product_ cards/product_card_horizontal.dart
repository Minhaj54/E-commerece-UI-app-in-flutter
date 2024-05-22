import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/common/widgets/custom_shapes/container/t_rounded_container.dart';
import 'package:rehla_mart/common/widgets/images/t_rounded_image.dart';
import 'package:rehla_mart/common/widgets/text/product_title_text.dart';
import 'package:rehla_mart/common/widgets/text/t_brand_title_with_verified_icon.dart';
import 'package:rehla_mart/common/widgets/text/t_product_price_title.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/t_circular_icon.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSize.productImageRadius),
    color: dark ? TColors.darkerGrey : TColors.softGrey,
    ),
    child: Row(
      children: [
        // Thumbnail
        TRoundedContainer(
          height: 120,
          padding: const EdgeInsets.all(TSize.sm),
          backgroundColor: dark ? TColors.grey : TColors.light,
          child:  Stack(
            children:   [
              // Thumbnail Image
              const SizedBox(
                  height : 120,
                  width: 120,
                  child: TRoundedImage(imageUrl: TImages.fruitsBanner,),),

              // Sales Tag
              Positioned(
                top: 02,
                left: 12,
                child: TRoundedContainer(
                    radius: TSize.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSize.sm, vertical: TSize.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),),
              ),
              // Favourite Icon Button
              const Positioned(
                top: 0,
                right: 0,
                child: TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                  width: 40,
                  height: 40,
                ),),
            ],
          ),
        ),

        // Details
        SizedBox(
          width: 172,
          child:  Padding(
            padding: const EdgeInsets.only(top: TSize.sm,left: TSize.sm),
              child : Column(
              children: [
                 const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TProductTitleText(title: 'Fresh Fruits',smallSize: true,),
                    SizedBox(height: TSize.spaceBtwItems/2,),
                    TBrandTitleWithVerifiedIcon(title: 'A to Z mall'),
                  ],
                ),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Pricing
                    const Flexible(child: TProductPriceText(price: '256.0 ',),),

                    // Add to Cart Button
                    Container(
                      decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSize.cardRadiusMd),
                            bottomRight: Radius.circular(TSize.productImageRadius),
                          )
                      ),
                      child: const SizedBox(
                        width: TSize.iconLg *1.2,
                        height: TSize.iconLg *1.2,
                        child: Center(child: Icon(Iconsax.add,color: TColors.white,),),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),

    );
  }
}
