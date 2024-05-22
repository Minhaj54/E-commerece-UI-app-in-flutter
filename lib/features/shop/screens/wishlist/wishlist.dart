import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';
import 'package:rehla_mart/common/widgets/icons/t_circular_icon.dart';
import 'package:rehla_mart/common/widgets/layout/grid_layout.dart';
import 'package:rehla_mart/features/screens/all_products/all_products.dart';

import '../../../../common/widgets/products/product_ cards/product_card_vertical.dart';
import '../../../../utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: ()=>Get.to(()=> const AllProducts(),),)
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 6, itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
