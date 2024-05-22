
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/features/screens/signup/verify_email.dart';
import 'package:rehla_mart/features/screens/signup/widgets/terms_conditions_checkbox.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: TSize.spaceBtwSections,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSize.spaceBtwInputFields,
          ),
          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwInputFields,
          ),
          // Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwInputFields,
          ),

          // Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwInputFields,
          ),
          // Password
          TextFormField(
            obscureText: true,
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: TSize.spaceBtwSections,
          ),
          // Terms & Conditions Checkbox
          TermsConditions(dark: dark),
          const SizedBox(
            height: TSize.spaceBtwSections,
          ),

          // sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: ()=> Get.to(()=> const VerifyEmailScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
