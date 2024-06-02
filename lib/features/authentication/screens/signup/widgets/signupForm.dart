import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/features/authentication/screens/signup/verify_email.dart';
import 'package:gebeya_ecommerce_application/features/authentication/screens/signup/widgets/TermsAndConditionCheckBox.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      // First name and Last name
      Row(
        children: [
          Expanded(
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user_copy)),
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwInputFields),
          Expanded(
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user_copy)),
            ),
          ),
        ],
      ),
      const SizedBox(height: TSizes.spaceBtwInputFields),

      // Username
      TextFormField(
        expands: false,
        decoration: const InputDecoration(
            labelText: TTexts.username,
            prefixIcon: Icon(Iconsax.direct_right_copy)),
      ),
      const SizedBox(height: TSizes.spaceBtwInputFields),

      // Email
      TextFormField(
        decoration: const InputDecoration(
            labelText: TTexts.email, prefixIcon: Icon(Icons.email_outlined)),
      ),
      const SizedBox(height: TSizes.spaceBtwInputFields),

// Phone Number
      TextFormField(
        decoration: const InputDecoration(
            labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call_copy)),
      ),
      const SizedBox(height: TSizes.spaceBtwSections),

      // Password
      TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
            labelText: TTexts.password,
            prefixIcon: Icon(Iconsax.password_check_copy),
            suffixIcon: Icon(Iconsax.eye_slash_copy)),
      ),
      const SizedBox(height: TSizes.spaceBtwSections),

      // Terms & Conditions checkbox
      const TermsAndConditionCheckBox(),
      const SizedBox(height: TSizes.spaceBtwSections),

      // Sign up Button
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => Get.to(() => const VerifyEmaitScreen()),
          child: const Text(TTexts.createAccount),
        ),
      )
    ]));
  }
}
