import 'package:flutter/material.dart';
import 'package:rehla_mart/common/widgets/custom_shapes/container/t_rounded_container.dart';
import 'package:rehla_mart/common/widgets/text/section_heading.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return Column(
      children: [
        TSectionHeadingWidget(title: 'Payment Method',buttonTitle: 'Change', onPressed: (){},),
        const SizedBox(height: TSize.spaceBtwItems/2,),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSize.sm),
              child:  const Image(image: AssetImage(TImages.phonePay),fit: BoxFit.contain,),
            ),
            const SizedBox(width: TSize.spaceBtwItems/2,),
            Text('Phonepe',style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
