import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Worklance/app/splash.dart';
import 'package:Worklance/app/theme.dart';

void main() => runApp(WorklanceApp());

class WorklanceApp extends StatelessWidget {
  const WorklanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: SplashScreen(),
    );
  }
}
