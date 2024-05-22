import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';
import 'package:rehla_mart/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:rehla_mart/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:rehla_mart/common/widgets/text/section_heading.dart';
import 'package:rehla_mart/features/personalization/screens/address/address.dart';
import 'package:rehla_mart/features/personalization/screens/profile/profile.dart';
import 'package:rehla_mart/features/shop/screens/cart/cart.dart';
import 'package:rehla_mart/features/shop/screens/order/order.dart';

import '../../../../common/widgets/list_tile/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          // Header
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                // AppBar
                TAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),

                // User Profile Card
                TUserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(
                  height: TSize.spaceBtwSections,
                ),
              ],
            ),
          ),
          // body
          Padding(
            padding: const EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              children: [
                const TSectionHeadingWidget(
                  title: 'Account Setting',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),

                TSettingMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'My Addresses',
                  subTitle: 'Set shopping delivery address',
                  onTap: ()=> Get.to(() => const UserAddressScreen()),
                ),
                TSettingMenuTile(
                  icon: Iconsax.shopping_cart,
                  title: 'My Cart',
                  subTitle: 'Add, remove products and move to checkout',
                  onTap: () => Get.to(()=> const CartScreen()),
                ),
                TSettingMenuTile(
                  icon: Iconsax.bag_tick,
                  title: 'My Orders',
                  subTitle: 'In-progress and Completed Orders',
                  onTap: () => Get.to(()=> const OrderScreen()),
                ),
                const TSettingMenuTile(
                  icon: Iconsax.bank,
                  title: 'Bank Account',
                  subTitle: 'Withdraw balance to registered bank account',
                ),
                const TSettingMenuTile(
                  icon: Iconsax.discount_shape,
                  title: 'My Coupons',
                  subTitle: 'List of all the discounted coupons',
                ),
                const TSettingMenuTile(
                  icon: Iconsax.notification,
                  title: 'Notifications',
                  subTitle: 'Set any kind of notification message',
                ),
                const TSettingMenuTile(
                  icon: Iconsax.security_card,
                  title: 'Account Privacy',
                  subTitle: 'Manage data usage and connected accounts',
                ),

                // App Setting
                const SizedBox(
                  height: TSize.spaceBtwSections,
                ),
                const TSectionHeadingWidget(
                  title: 'App Settings',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),
                const TSettingMenuTile(
                  icon: Iconsax.document_upload,
                  title: 'Geolocation',
                  subTitle: 'Set recommendation based on location',
                ),
                TSettingMenuTile(
                  icon: Iconsax.location,
                  title: 'Geolocation',
                  subTitle: 'Set recommendation based on location',
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                TSettingMenuTile(
                  icon: Iconsax.security_user,
                  title: 'Safe Mode',
                  subTitle: 'Search result is safe for all ages',
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),
                TSettingMenuTile(
                  icon: Iconsax.image,
                  title: 'HD Image Quality',
                  subTitle: 'Set image quality to be seen',
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),

                // Logout Button
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Logout'),
                  ),
                ),
                const SizedBox(
                  height: TSize.spaceBtwSections * 2.5,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
