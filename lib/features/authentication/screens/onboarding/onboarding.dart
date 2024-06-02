import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:gebeya_ecommerce_application/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:gebeya_ecommerce_application/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:gebeya_ecommerce_application/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:gebeya_ecommerce_application/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:gebeya_ecommerce_application/utils/constants/image_strings.dart';
import 'package:gebeya_ecommerce_application/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                  image: TImages.onBordingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnboardingPage(
                  image: TImages.onBordingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnboardingPage(
                  image: TImages.onBordingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
