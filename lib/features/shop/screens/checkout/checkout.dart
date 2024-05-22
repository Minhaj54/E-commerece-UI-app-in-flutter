import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehla_mart/common/widgets/custom_shapes/container/t_rounded_container.dart';
import 'package:rehla_mart/common/widgets/success_screen/success_screen.dart';
import 'package:rehla_mart/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:rehla_mart/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:rehla_mart/features/shop/screens/checkout/widget/billing_amount_section.dart';
import 'package:rehla_mart/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:rehla_mart/navigation_menu.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review ',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              // Items in Cart
              const TCartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              // Coupon TextField
              const TCouponCode(),
              const SizedBox(height: TSize.spaceBtwSections,),

              // Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSize.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    // Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSize.spaceBtwItems,),

                    // Divider
                    Divider(),
                    SizedBox(height: TSize.spaceBtwItems,),

                    // Payments
                    TBillingPaymentSection(),
                    SizedBox(height: TSize.spaceBtwItems,),

                    // Address
                    TBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      // Checkout Button
      bottomNavigationBar: Padding(padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(()=> SuccessScreen(
          image: TImages.paymentSuccessful,
          title: 'Payment Success!',
          subTitle: 'Your item will be shipped soon!',
          onPressed: ()=> Get.offAll(()=> const NavigationMenu()),
        )),child: const Text('Checkout ₹548',),),
      ),
    );
  }
}

