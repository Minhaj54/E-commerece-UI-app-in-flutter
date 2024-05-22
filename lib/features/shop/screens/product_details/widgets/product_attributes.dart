import 'package:flutter/material.dart';
import 'package:rehla_mart/common/widgets/custom_shapes/container/t_rounded_container.dart';
import 'package:rehla_mart/common/widgets/text/product_title_text.dart';
import 'package:rehla_mart/common/widgets/text/section_heading.dart';
import 'package:rehla_mart/common/widgets/text/t_product_price_title.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/chips/choice_chips.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return Column(
         children: [
           const SizedBox(height: TSize.spaceBtwItems,),
           // Selected Attribute Pricing & Description
           TRoundedContainer(
             padding: const EdgeInsets.all(TSize.md),
             backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
             child:  Column(
               children: [
                 // Title, Price and Stock Status
                 Row(
                   children: [
                     const TSectionHeadingWidget(title: 'Variation', showActionButton: false,),
                     const SizedBox(width: TSize.spaceBtwItems,),

                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                             const TProductTitleText(title: 'Price : ', smallSize: true,),

                             // Actual Price
                             Text('₹570',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                             const SizedBox(width: TSize.spaceBtwItems,),

                             // Sale Price
                             const TProductPriceText(price: '370')
                           ],
                         ),

                         // Stock/Availability
                         Row(
                           children: [
                             const TProductTitleText(title: 'Stock : ', smallSize: true,),
                             Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
                           ],
                         ),

                       ],
                     ),





                   ],
                 ),

                 // Variation Description
                 const TProductTitleText(title: 'This is the Description of the Product and it can go up to max 4 lines.',smallSize: true,maxLines: 4,)




               ],
             ),
           ),
           const SizedBox(height: TSize.spaceBtwItems,),

           // Attributes
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const TSectionHeadingWidget(title: 'Colors', showActionButton: false,),
               const SizedBox(height: TSize.spaceBtwItems/2,),
             Wrap(
               spacing: 8,
               children: [
                 TChoiceChips(text: 'Green',selected: true,onSelected: (value){},),
                 TChoiceChips(text: 'Blue',selected: false,onSelected: (value){},),
                 TChoiceChips(text: 'Yellow',selected: false,onSelected: (value){},),

               ],
             )
             ],
           ),
           const SizedBox(height: TSize.spaceBtwItems,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const TSectionHeadingWidget(title: 'Size',showActionButton: false,),
               const SizedBox(height: TSize.spaceBtwItems/2,),
               Wrap(
                 spacing: 8,
                 children: [
                   TChoiceChips(text: 'EU 34',selected: false,onSelected: (value){},),
                   TChoiceChips(text: 'EU 36',selected: true,onSelected: (value){},),
                   TChoiceChips(text: 'EU 38',selected: false,onSelected: (value){},),

                 ],
               )
             ],
           ),
         ],
    );
  }
}
