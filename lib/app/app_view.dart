import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:worklance_app/screens/chat.dart';
import 'package:worklance_app/screens/home.dart';
import 'package:worklance_app/screens/my_posts.dart';
import 'package:worklance_app/screens/profile.dart';

void main() => runApp(AppView());

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(controller),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }

  Widget _bottomNavigationBar(NavigationController controller) {
//  TextStyle(fontWeight: FontWeight.w500, fontSize: 13)
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: Obx(
        () => NavigationBarTheme(
          data: NavigationBarThemeData(
              labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: Color.fromARGB(255, 17, 17, 251));
            }
            return TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
            );
          })),
          child: NavigationBar(
            height: 70,
            indicatorColor: Color.fromARGB(57, 0, 0, 255),
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            backgroundColor: Colors.white,
            destinations: [
              NavigationDestination(
                  selectedIcon: Icon(
                    Iconsax.home_25,
                    size: 28,
                    color: Color.fromARGB(255, 17, 17, 251),
                  ),
                  icon: Icon(
                    Iconsax.home_24,
                    size: 28,
                  ),
                  label: 'Home'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Iconsax.message5,
                    size: 28,
                    color: Color.fromARGB(255, 17, 17, 251),
                  ),
                  icon: Icon(
                    Iconsax.message,
                    size: 28,
                  ),
                  label: 'Chat'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Iconsax.card5,
                    size: 28,
                    color: Color.fromARGB(255, 17, 17, 251),
                  ),
                  icon: Icon(
                    Iconsax.card,
                    size: 28,
                  ),
                  label: 'My Posts'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Iconsax.personalcard5,
                    size: 28,
                    color: Color.fromARGB(255, 17, 17, 251),
                  ),
                  icon: Icon(
                    Iconsax.personalcard,
                    size: 28,
                  ),
                  label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    ChatScreen(),
    MyPostsScreen(),
    ProfileScreen(),
  ];
}
