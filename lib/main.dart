import 'package:flutter/material.dart';
import 'package:instagram_clone/app_theme_data.dart';
import 'package:instagram_clone/screen/login_screen/screen.dart';

void main() {
  runApp(const InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
        theme: AppThemeData().light(),
        darkTheme: AppThemeData().dark(),
        themeMode: ThemeMode.light,
        title: 'Instagram Clone',
    );
  }
}

