import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:rehla_mart/common/widgets/text/section_heading.dart';
import 'package:rehla_mart/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:rehla_mart/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:rehla_mart/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:rehla_mart/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:rehla_mart/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:rehla_mart/features/shop/screens/product_reviews/product_reviews.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return  Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product image slider
            const TProductImageSlider(),

            // Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: TSize.defaultSpace,
                left: TSize.defaultSpace,
                bottom: TSize.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating & Share Button
                  const TRatingAndShare(),

                  // Price, title, Stock, & Brand
                  const TProductMetaData(),

                  // Attributes
                  const ProductAttributes(),
                  const SizedBox(height: TSize.spaceBtwSections,),

                  // Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout')),),
                  const SizedBox(height: TSize.spaceBtwSections,),

                  // Description
                  const TSectionHeadingWidget(title: 'Description', showActionButton: false,),
                  const SizedBox(height: TSize.spaceBtwItems,),
                   const ReadMoreText(
                    'Indulge in nature\'s bounty with our exquisite fruit basket collection, curated to perfection for a delightful experience. Bursting with vibrant colors and irresistible flavors, each basket is handcrafted with care to ensure maximum freshness and quality. From succulent strawberries to juicy oranges, crisp apples to sweet grapes, our selection offers a symphony of tastes to tantalize your taste buds. Whether you\'re treating yourself or sending a thoughtful gift, our fruit baskets are the epitome of freshness and elegance. Elevate your snacking experience with our premium fruit collection today!',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                     trimCollapsedText: 'Show More',
                     trimExpandedText: ' Less',
                     moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                     lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),


                  ),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: TSize.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeadingWidget(title: 'Reviews(199)',showActionButton: false,),
                      IconButton(onPressed: ()=>Get.to(()=> const ProductReviewScreen()), icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwSections,),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
