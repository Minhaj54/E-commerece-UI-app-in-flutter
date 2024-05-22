import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/common/widgets/icons/t_circular_icon.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSize.defaultSpace, vertical: TSize.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? TColors.darkerGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSize.cardRadiusLg),
          topRight: Radius.circular(TSize.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.darkGrey,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
              const SizedBox(
                width: TSize.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: TSize.spaceBtwItems,
              ),
              const TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.black,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(TSize.md),
                backgroundColor: TColors.black,
                side: const BorderSide(color: TColors.black)),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
