import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/features/personalization/screens/settings/settings.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/home/home.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/store/store.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/wishlist/wishlist.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? Pallette.black : Pallette.white,
          indicatorColor: darkMode
              ? Pallette.white.withOpacity(0.1)
              : Pallette.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home_copy), label: 'Home'),
            NavigationDestination(
                icon: Icon(Iconsax.shop_copy), label: 'Store'),
            NavigationDestination(
                icon: Icon(Iconsax.star_copy), label: 'Wishlist'),
            NavigationDestination(
                icon: Icon(Iconsax.user_copy), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    const SettingsScreen()
  ];
}
