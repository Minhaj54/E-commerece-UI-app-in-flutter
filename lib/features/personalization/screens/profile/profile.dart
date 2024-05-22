import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';
import 'package:rehla_mart/common/widgets/images/t_circular_image.dart';
import 'package:rehla_mart/common/widgets/text/section_heading.dart';
import 'package:rehla_mart/features/personalization/screens/profile/widgets/profile_menu.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
        body : SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              children: [
                // Profile Picture
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const TCircularImage(image: TImages.user,),
                      TextButton(onPressed: (){}, child: const  Text('Change Profile Picture'))
                    ],
                  ),
                ),

                // Details
                const SizedBox(height: TSize.spaceBtwItems/2,),
                const Divider(),
                const SizedBox(height: TSize.spaceBtwItems,),

                const TSectionHeadingWidget(title: 'Profile Information',showActionButton: false,),
                const SizedBox(height: TSize.spaceBtwItems,),
                
                TProfileMenu(title: 'Name',value: 'Minhaj Raza',onPressed: (){},),
                TProfileMenu(title: 'Username',value: 'minhaj',onPressed: (){},),

                const SizedBox(height: TSize.spaceBtwItems/2,),
                const Divider(),
                const SizedBox(height: TSize.spaceBtwItems,),

                TProfileMenu(title: 'User ID',value: '45689',icon : Iconsax.copy, onPressed: (){},),
                TProfileMenu(title: 'E-mail',value: 'mihaj@gmail.com',onPressed: (){},),
                TProfileMenu(title: 'Phone Number',value: '+916200000000',onPressed: (){},),
                TProfileMenu(title: 'Gender',value: 'Male',onPressed: (){},),
                TProfileMenu(title: 'Date of Birth',value: '10 Oct, 1994',onPressed: (){},),
                const Divider(),
                const SizedBox(height: TSize.spaceBtwItems,),

                Center(
                  child: TextButton(
                    onPressed: (){},
                    child: const Text('Close Account',style: TextStyle(color: Colors.red),),
                  ),
                )

              ],
            ),
          ),
        )
    );
  }
}

