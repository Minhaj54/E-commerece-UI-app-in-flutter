import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehla_mart/common/widgets/login_signup/form_divider.dart';
import 'package:rehla_mart/common/widgets/login_signup/social_buttons.dart';
import 'package:rehla_mart/features/screens/signup/widgets/signup_form.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //Form
              const SignupForm(),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              // Divider
              TFormDivider(dividerText: TTexts.orSignUpWIth.capitalize!),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              // Social Button
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
