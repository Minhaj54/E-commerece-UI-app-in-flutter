import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';
import 'package:rehla_mart/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:rehla_mart/features/shop/screens/checkout/checkout.dart';
import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: TCartItems(),
      ),
      bottomNavigationBar: Padding(padding: const EdgeInsets.all(TSize.defaultSpace),
      child: ElevatedButton(onPressed: ()=> Get.to(()=> const CheckoutScreen()),child: const Text('Checkout ₹673',),),
      ),
    );
  }
}
