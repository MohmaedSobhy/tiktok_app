

import 'package:flutter/material.dart';
import 'package:tiktok_app/Feature/home/presentation/screens/main_screen.dart';
import 'package:tiktok_app/core/theme/app_color.dart';

class TicTokApp extends StatelessWidget {
  const TicTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primaryColor:AppColor.primary,
      ),
      home:MainScreen(),
    );
  }
}