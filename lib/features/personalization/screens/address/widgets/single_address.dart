import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/container/t_rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress, });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSize.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5) : Colors.transparent ,
      borderColor: selectedAddress ? Colors.transparent : dark ? TColors.darkerGrey : TColors.grey ,
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
            color: selectedAddress ? dark ? TColors.light : TColors.dark  : null
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Minhaj Raza',
              maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSize.sm/2,),
              const Text('+91623770000',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: TSize.sm/2,),
              const Text('Belchampa, Main Road, Palamu-822124, Jharkhand ', softWrap: true,)
            ],
          )
        ],
      ),
    );
  }
}
