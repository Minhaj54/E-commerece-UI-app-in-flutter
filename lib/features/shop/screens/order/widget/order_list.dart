import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/common/widgets/custom_shapes/container/t_rounded_container.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return   ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_,__) => const SizedBox(height: TSize.spaceBtwItems,),
      itemBuilder : (_, index) => TRoundedContainer(
     showBorder: true,
     backgroundColor: dark ? TColors.dark : TColors.light,
      padding: const EdgeInsets.all(TSize.md),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row
            Row(
              children: [
                // Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: TSize.spaceBtwItems/2,),

                // Status & Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Processing',style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontWeightDelta: 1),),
                      Text('28 march 2024',style: Theme.of(context).textTheme.headlineSmall,),
                    ],
                  ),
                ),

                // Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: TSize.iconMd,),),
              ],
            ),
            const SizedBox(height: TSize.spaceBtwItems,),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSize.spaceBtwItems/2,),

                      // Status & Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Order',style: Theme.of(context).textTheme.labelMedium),
                            Text('#256f3',style: Theme.of(context).textTheme.titleMedium,),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSize.spaceBtwItems/2,),

                      // Status & Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Shipping Date',style: Theme.of(context).textTheme.labelMedium),
                            Text('03 April 2024',style: Theme.of(context).textTheme.titleMedium,),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
