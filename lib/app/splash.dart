import 'package:Worklance/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      Get.offAll(LoginScreen());
    });
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 239, 245),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/worklance_logo1.png',
              width: 170,
              height: 170,
            ),
            Image.asset(
              'assets/images/loading.gif',
              width: 80,
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
