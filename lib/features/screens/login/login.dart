import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehla_mart/common/styles/spacing_styles.dart';
import 'package:rehla_mart/features/screens/login/widgets/login_form.dart';
import 'package:rehla_mart/features/screens/login/widgets/login_header.dart';
import 'package:rehla_mart/utils/helpers/helper_functions.dart';

import '../../../common/widgets/login_signup/form_divider.dart';
import '../../../common/widgets/login_signup/social_buttons.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMood(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & sub-Title
              TLoginHeader(dark: dark),

              // Form
              const TLoginForm(),
              TFormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              // Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
