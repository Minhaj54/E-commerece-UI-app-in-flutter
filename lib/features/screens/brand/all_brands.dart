import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehla_mart/common/brands/brand_card.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';
import 'package:rehla_mart/common/widgets/layout/grid_layout.dart';
import 'package:rehla_mart/common/widgets/text/section_heading.dart';
import 'package:rehla_mart/features/screens/brand/brand_products.dart';

import '../../../utils/constants/sizes.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TAppBar(
          title: Text(
            'Brands',
          ),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              children: [
                // Heading
                const TSectionHeadingWidget(
                  title: 'Brands',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),

                // Brands
                TGridLayout(
                    itemCount: 10,
                    mainAxisExtent: 80,
                    itemBuilder: (context, index) =>
                        TBrandCard(showBorder: true,
                          onTap: () => Get.to(()=> const  BrandProduct()),
                        ),


                  ),
              ],
            ),
          ),
        ));
  }
}
