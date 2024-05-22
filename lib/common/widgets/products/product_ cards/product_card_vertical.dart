import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/common/styles/shadows.dart';
import 'package:rehla_mart/common/widgets/images/t_rounded_image.dart';
import 'package:rehla_mart/features/shop/screens/product_details/product_detail.dart';
import 'package:rehla_mart/utils/constants/image_strings.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shapes/container/t_rounded_container.dart';
import '../../icons/t_circular_icon.dart';
import '../../text/product_title_text.dart';
import '../../text/t_brand_title_with_verified_icon.dart';
import '../../text/t_product_price_title.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return GestureDetector(
      onTap: ()=> Get.to(()=> const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSize.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail
            Stack(
              children: [
                // Thumbnail
                 const TRoundedImage(
                  imageUrl: TImages.fruitsBanner,
                  applyImageRadius: true,

                ),

                // Sales Tag
                Positioned(
                  top: 12,
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
                      )),
                ),

                // Favourite Icon Button
                 const Positioned(
                    top: 10,
                    right: 10,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      width: 40,
                      height: 40,
                    ),),
              ],
            ),
            const SizedBox(height: TSize.spaceBtwItems/2,),
            // Details
             const Padding(
              padding: EdgeInsets.only(left: TSize.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: TSize.spaceBtwItems/2,),
                    TProductTitleText(
                      title: 'Fruits & Vegetables',
                      smallSize: true,
                    ),
                    SizedBox(height: TSize.spaceBtwItems/2,),
                    TBrandTitleWithVerifiedIcon(title: 'A to Z mall',),

                  ],
                ),
              ),
            ),
            const Spacer(),

            // Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: TSize.sm),
                  child: TProductPriceText(price: '150',),
                ),

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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
