import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehla_mart/features/shop/screens/sub_category/sub_categories.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';
class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              image: TImages.grocery,
              title: 'Grocery',
              onTap: ()=> Get.to(()=> const SubCategoriesScreen()),
            );
          }),
    );
  }
}
