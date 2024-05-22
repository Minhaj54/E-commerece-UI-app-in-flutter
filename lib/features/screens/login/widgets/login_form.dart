import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/features/screens/password_configuration/forget_password.dart';
import 'package:rehla_mart/features/screens/signup/signup.dart';

import '../../../../navigation_menu.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwSections),
        child: Column(
          children: [
            // email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),
            // password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash),
                  labelText: TTexts.password),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields / 2,
            ),

            // Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Checkbox(value: true, onChanged: (value) {}),
                const Text(TTexts.rememberMe),

                // Forget Password
                TextButton(
                    onPressed: ()=> Get.to(()=> const ForgetPassword()), child: const Text(TTexts.forgetPassword)),
                const SizedBox(
                  height: TSize.spaceBtwSections,
                ),
              ],
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: ()=>Get.to(()=>const NavigationMenu()),
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),
            // Create Account Button
            SizedBox(
              width: double.maxFinite,
              child: OutlinedButton(
                onPressed: () => Get.to(()=> const SignupScreen()),
                child: const Text(TTexts.createAccount),
              ),
            ),
            const SizedBox(
              height: TSize.spaceBtwSections,
            ),
          ],
        ),
      ),
    );
  }
}
