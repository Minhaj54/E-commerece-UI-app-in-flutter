import 'package:flutter/material.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';
import 'package:rehla_mart/features/shop/screens/order/widget/order_list.dart';

import '../../../../utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),

        // Orders
        child: TOrderListItems(),
      ),
    );
  }
}
