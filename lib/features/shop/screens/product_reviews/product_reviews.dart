import 'package:flutter/material.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';
import 'package:rehla_mart/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:rehla_mart/features/shop/screens/product_reviews/widgets/user_review_card.dart';

import '../../../../common/widgets/ratings/rating_indicator.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: const TAppBar(title: Text('Reviews & Ratings'),showBackArrow: true,),
      body: SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
            const SizedBox(height: TSize.spaceBtwItems,),

              // Overall Product Ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 4.8,),
              Text('345',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSize.spaceBtwSections,),

              // User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),

            ],
          ),
          ),
      ),
    );
  }
}

