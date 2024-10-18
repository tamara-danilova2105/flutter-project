import 'package:flutter/material.dart';
import 'package:instagram_clone/app_theme_data.dart';
import 'package:instagram_clone/screen/auth_screens/login_screen/screen.dart';
import 'package:instagram_clone/screen/auth_screens/signup_screen/create_password_screen.dart';
import 'package:instagram_clone/screen/auth_screens/signup_screen/email_confirmation_screen.dart';
import 'package:instagram_clone/screen/auth_screens/signup_screen/email_input_screen.dart';
import 'package:instagram_clone/screen/auth_screens/signup_screen/screen.dart';

void main() {
  runApp(const InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemeData().light(),
        darkTheme: AppThemeData().dark(),
        themeMode: ThemeMode.light,
        title: 'Instagram Clone',
        routes: {
          '/login': (context) => const LoginScreen(),
          '/signup': (context) => const SignupScreen(),
          '/signup-email-input': (context) => const EmailInputScreen(),
          '/signup-email-confirmation': (context) => const EmailConfirmationScreen(),
          '/create-password': (context) => const CreatePasswordScreen(),
        },
        home: const LoginScreen(),
    );
  }
}

