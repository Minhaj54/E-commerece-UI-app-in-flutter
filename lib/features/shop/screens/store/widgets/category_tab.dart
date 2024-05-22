import 'package:flutter/cupertino.dart';
import 'package:rehla_mart/common/widgets/layout/grid_layout.dart';
import 'package:rehla_mart/common/widgets/products/product_%20cards/product_card_vertical.dart';
import 'package:rehla_mart/common/widgets/text/section_heading.dart';

import '../../../../../common/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [ Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            // Brands
            const TBrandShowcase(
              images: [
                TImages.vegetables,
                TImages.fruits,
                TImages.grocery,
              ],
            ),

            const SizedBox(
              height: TSize.spaceBtwItems,
            ),
            // Products
            TSectionHeadingWidget(
              title: 'You might like',
              onPressed: () {},
            ),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),

            TGridLayout(itemCount: 4, itemBuilder: (_,index) => const TProductCardVertical()),
            const SizedBox(height: TSize.spaceBtwItems,)
          ],
        ),
      ),
    ]
    );
  }
}
