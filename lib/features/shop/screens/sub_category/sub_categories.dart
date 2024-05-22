import 'package:flutter/material.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';
import 'package:rehla_mart/common/widgets/images/t_rounded_image.dart';
import 'package:rehla_mart/common/widgets/text/section_heading.dart';

import '../../../../common/widgets/products/product_ cards/product_card_horizontal.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: const TAppBar(title: Text('Groceries'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              // Banner
              const TRoundedImage(imageUrl: TImages.groceryBanner,width: double.infinity,applyImageRadius: true,),
              const SizedBox(height: TSize.spaceBtwSections,),

              // Sub - Categories
              Column(
                children: [
                  // Heading
                  TSectionHeadingWidget(title: 'Fruits',onPressed: (){},),
                  const SizedBox(height: TSize.spaceBtwItems/2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount : 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder:  (context, index) => const SizedBox(width : TSize.spaceBtwItems),
                      itemBuilder: (context, index) => const TProductCardHorizontal(),

                    ),
                  )


                ],
              ),
              const SizedBox(height: TSize.spaceBtwItems,),
              Column(
                children: [
                  // Heading
                  TSectionHeadingWidget(title: 'Vegetables',onPressed: (){},),
                  const SizedBox(height: TSize.spaceBtwItems/2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount : 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder:  (context, index) => const SizedBox(width : TSize.spaceBtwItems),
                      itemBuilder: (context, index) => const TProductCardHorizontal(),

                    ),
                  )


                ],
              ),
              const SizedBox(height: TSize.spaceBtwItems,),
              Column(
                children: [
                  // Heading
                  TSectionHeadingWidget(title: 'Foods',onPressed: (){},),
                  const SizedBox(height: TSize.spaceBtwItems/2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount : 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder:  (context, index) => const SizedBox(width : TSize.spaceBtwItems),
                      itemBuilder: (context, index) => const TProductCardHorizontal(),

                    ),
                  )


                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
