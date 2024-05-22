import 'package:flutter/material.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';

import '../../../common/widgets/products/sortable/sortable_products.dart';
import '../../../utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: TSortableProducts(),
        ),
      ),
    );
  }
}

