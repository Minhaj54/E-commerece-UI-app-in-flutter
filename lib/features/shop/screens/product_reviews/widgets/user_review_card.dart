import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:rehla_mart/common/widgets/custom_shapes/container/t_rounded_container.dart';
import 'package:rehla_mart/common/widgets/ratings/rating_indicator.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.user),),
                const SizedBox(width: TSize.spaceBtwItems,),
                Text('Minhaj Raza',style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: () {}, icon: const  Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems,),

        // Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSize.spaceBtwItems,),
            Text('027 March, 2024', style: Theme.of(context).textTheme.bodyMedium,),

          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        const ReadMoreText(
          'The  user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),

        // Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSize.md),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rehla Mart',style : Theme.of(context).textTheme.titleMedium),
                  Text('29 March, 2024',style : Theme.of(context).textTheme.bodyLarge),
                ],
              ),
              const ReadMoreText(
                '"Thank you for your kind words! We\'re thrilled to hear that you\'re enjoying our product. Your satisfaction is our utmost priority, and we\'re committed to delivering excellence every step of the way. Here\'s to many more delightful experiences with our product!"!',
                trimLines: 1,
                trimMode: TrimMode.Line,
                trimExpandedText: ' show less',
                trimCollapsedText: ' show more',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
              ),
            ],
            ),
          ),
        ),
        const SizedBox(height: TSize.spaceBtwItems,),


      ],
    );
  }
}
