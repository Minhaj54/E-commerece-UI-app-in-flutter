import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehla_mart/utils/constants/image_strings.dart';
import 'package:rehla_mart/utils/constants/sizes.dart';
import 'package:rehla_mart/utils/constants/text_strings.dart';

import '../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(CupertinoIcons.clear),),
        ],
      ),
        body : SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              children: [
                // Image
                Image(image: const AssetImage(TImages.verifyEmailIllustration),width: THelperFunctions.screenWidth()*0.6,),
                const SizedBox(height: TSize.spaceBtwSections,),

                //Title & SubTitle
                Text(TTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                const SizedBox(height: TSize.spaceBtwSections,),
                Text(TTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
                const SizedBox(height: TSize.spaceBtwSections,),
                // Buttons
                SizedBox(width: double.infinity,
                  child: ElevatedButton(onPressed: (){},child: const Text(TTexts.done),),),
                const SizedBox(height: TSize.spaceBtwItems,),
                SizedBox(width: double.infinity,
                  child: TextButton(onPressed: (){},child: const Text(TTexts.resendEmail),),),
              ],
            ),
          ),
        )
    );
  }
}
