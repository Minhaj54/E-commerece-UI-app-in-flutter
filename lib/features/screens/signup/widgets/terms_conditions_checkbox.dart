
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: TSize.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: " ${TTexts.iAgreeTo} ",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: " ${TTexts.privacyPolicy} ",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(
              color: dark ? TColors.white : TColors.primary,
              decoration: TextDecoration.underline,
              decorationColor:
              dark ? TColors.white : TColors.primary,
            ),
          ),
          TextSpan(
              text: " ${TTexts.and} ",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: " ${TTexts.termsOfUse} ",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(
              color: dark ? TColors.white : TColors.primary,
              decoration: TextDecoration.underline,
              decorationColor:
              dark ? TColors.white : TColors.primary,
            ),
          ),
        ]))
      ],
    );
  }
}