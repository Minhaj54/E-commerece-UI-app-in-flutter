import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehla_mart/common/widgets/products/product_%20cards/product_card_vertical.dart';
import 'package:rehla_mart/features/screens/all_products/all_products.dart';
import 'package:rehla_mart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:rehla_mart/features/shop/screens/home/widgets/home_category.dart';
import 'package:rehla_mart/features/shop/screens/home/widgets/promo_slider.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
                child: Column(
              children: [
                // Appbar
                THomeAppBar(),

                // Searchbar
                TSearchContainer(
                  text: "Search in Store",
                ),
                SizedBox(
                  height: TSize.spaceBtwSections,
                ),

                // Categories
                Padding(
                  padding: EdgeInsets.only(left: TSize.defaultSpace),
                  child: Column(
                    children: [
                      // Heading
                      TSectionHeadingWidget(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: TSize.spaceBtwItems,
                      ),

                      // Categories
                      THomeCategories()
                    ],
                  ),
                ),
                SizedBox(height: TSize.spaceBtwSections,)
              ],
            )),

            // Body
             const Padding(
                padding: EdgeInsets.all(TSize.defaultSpace),
                child: TPromoSlider(
                  banner: [
                    TImages.groceryBanner,
                    TImages.fruitsBanner,
                    TImages.vegetableBanner,
                    TImages.biryaniBanner,
                  ],
                )),



            // Heading
            Padding(
            padding: const EdgeInsets.only(left: TSize.defaultSpace),
              child: TSectionHeadingWidget(title: "Popular Products",onPressed: () => Get.to(()=> const AllProducts()),),
            ),
            const SizedBox(height: TSize.spaceBtwItems,),
            // Popular Products
            TGridLayout(
              itemCount: 6,
              itemBuilder: (context,index) => const TProductCardVertical(),
            )
          ],
        ),
      ),
    );
  }
}
