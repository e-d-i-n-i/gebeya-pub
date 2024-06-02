import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:gebeya_ecommerce_application/features/authentication/screens/signup/signup.dart';
import 'package:gebeya_ecommerce_application/navigation_menu.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: TTexts.email),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            // Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check_copy),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash_copy)),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            // Remember Me & Forgot Password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Rememeber Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                // Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgotPassword()),
                    child: const Text(TTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const NavigationMenu()),
                    child: const Text(TTexts.signIn))),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    child: const Text(TTexts.createAccount))),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
          ],
        ),
      ),
    );
  }
}
