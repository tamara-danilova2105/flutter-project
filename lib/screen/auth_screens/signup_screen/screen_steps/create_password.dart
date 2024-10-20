import 'package:flutter/material.dart';
import 'package:instagram_clone/screen/auth_screens/signup_screen/screen_steps/screen_step.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ScreenStep(
            headerText: "Create a password",
            description: "Create a password with at least 7 letters or numbers. It should be something other can't guess.",
            inputLabel: "Password",
            emailConfirmationStep: true,
            onNextButtonPressed: () => Navigator.pushNamed(context, '/signup-email-confirmation'),
          )
      ),
    );
  }
}