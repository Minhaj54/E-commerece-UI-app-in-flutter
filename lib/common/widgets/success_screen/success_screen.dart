 import 'package:flutter/material.dart';
import 'package:rehla_mart/common/styles/spacing_styles.dart';
import 'package:rehla_mart/utils/constants/sizes.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
   const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

   final String image,title,subTitle;
   final VoidCallback onPressed;

   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       body: SingleChildScrollView(
         child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight*2,
         child: Column(
           children: [
             // Image
             Image(image:  AssetImage(image),width: THelperFunctions.screenWidth()*0.6,),
             const SizedBox(height: TSize.spaceBtwSections,),
             
             //Title & SubTitle
             Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
             const SizedBox(height: TSize.spaceBtwSections,),
             Text(subTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
             const SizedBox(height: TSize.spaceBtwSections,),
             // Buttons
             SizedBox(width: double.infinity,
             child: ElevatedButton(onPressed: onPressed,child: const Text(TTexts.tContinue),),)
           ],
         ),),
       ),
     );
   }
 }
