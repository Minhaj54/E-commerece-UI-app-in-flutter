import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/text/t_product_price_title.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key,  this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSize.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) =>  Column(
        children: [
          const TCartItem(),
          if(showAddRemoveButtons) const SizedBox(
            height: TSize.spaceBtwItems,
          ),

          // Add Remove Button with total price
          if(showAddRemoveButtons)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  // Add Remove Buttons
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),
              TProductPriceText(price: '370'),
            ],
          )
        ],
      ),
    );
  }
}
