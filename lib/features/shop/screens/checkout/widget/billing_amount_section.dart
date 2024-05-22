import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹520',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems / 2,),

        // Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹20',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems / 2,),


        // Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹8',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems / 2,),


        // Order Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹548',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),

      ],
    );
  }
}
