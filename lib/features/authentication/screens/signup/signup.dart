import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/login_signup/form_divider.dart';
import 'package:gebeya_ecommerce_application/common/widgets/login_signup/social_buttons.dart';
import 'package:gebeya_ecommerce_application/features/authentication/screens/signup/widgets/signupForm.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Title
            Text(TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Form
            const SignupForm(),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Divider
            TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Social buttons
            const TSocialButtons(),
          ]),
        ),
      ),
    );
  }
}
