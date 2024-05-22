import 'package:flutter/material.dart';
import 'package:rehla_mart/common/widgets/text/section_heading.dart';

import '../../../../../utils/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeadingWidget(title: 'Shipping Address', buttonTitle: 'Change',onPressed: (){},),
        Text('Minhaj Raza', style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: TSize.spaceBtwItems/2,),

        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey, size: 16,),
            const SizedBox(width: TSize.spaceBtwItems,),
            Text('+916208654766',style: Theme.of(context).textTheme.bodyLarge,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history,color: Colors.grey,size: 16,),
            const SizedBox(width: TSize.spaceBtwItems,),
            Expanded(child: Text('Belchampa, Main Road, Palamu-822124,',style: Theme.of(context).textTheme.bodyLarge,softWrap: true,)),
          ],
        )

      ],
    );
  }
}
