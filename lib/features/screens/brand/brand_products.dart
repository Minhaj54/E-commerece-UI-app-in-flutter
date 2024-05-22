import 'package:flutter/material.dart';
import 'package:rehla_mart/common/brands/brand_card.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';
import 'package:rehla_mart/common/widgets/products/sortable/sortable_products.dart';

import '../../../utils/constants/sizes.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct ({super.key});

  @override
  Widget  build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('A to Z Mall'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            // Brand Detail
            TBrandCard(showBorder: true),
            SizedBox(height: TSize.spaceBtwSections,),

            TSortableProducts(),
          ],
        ),
        ),
      ),
    );
  }
}
