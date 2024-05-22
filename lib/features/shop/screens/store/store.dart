import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';
import 'package:rehla_mart/common/widgets/custom_shapes/container/search_container.dart';
import 'package:rehla_mart/common/widgets/layout/grid_layout.dart';
import 'package:rehla_mart/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:rehla_mart/common/widgets/text/section_heading.dart';
import 'package:rehla_mart/features/shop/screens/store/widgets/category_tab.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/brands/brand_card.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../screens/brand/all_brands.dart';
import '../../../screens/brand/brand_products.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [TCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScroller) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMood(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSize.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // Search bar
                      const SizedBox(
                        height: TSize.spaceBtwItems,
                      ),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSize.spaceBtwSections,
                      ),

                      // Featured Brands
                      TSectionHeadingWidget(
                        title: 'Featured Brands',
                        onPressed: ()=> Get.to(()=>const AllBrandScreen()),
                      ),
                      const SizedBox(
                        height: TSize.spaceBtwItems / 1.5,
                      ),

                      TGridLayout(
                          mainAxisExtent: 80,
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return  TBrandCard(showBorder: true,onTap: ()=> Get.to(()=>const BrandProduct()),);
                          })
                    ],
                  ),
                ),

                // Tabs
                bottom:  const TTabBar(tabs: [
                  Tab(child: Text('Grocery'),),
                  Tab(child: Text('Vegetables'),),
                  Tab(child: Text('Fruits'),),
                  Tab(child: Text('Foods'),),
                ],),
              )
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

