import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/styles/spacing_styles.dart';
import 'package:gebeya_ecommerce_application/common/widgets/login_signup/form_divider.dart';
import 'package:gebeya_ecommerce_application/common/widgets/login_signup/social_buttons.dart';
import 'package:gebeya_ecommerce_application/features/authentication/screens/login/widgets/login_form.dart';
import 'package:gebeya_ecommerce_application/features/authentication/screens/login/widgets/login_header.dart';
import 'package:gebeya_ecommerce_application/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo, Title & Sub-Title
              const TLoginHeader(),

              ///Form
              const TLoginForm(),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
