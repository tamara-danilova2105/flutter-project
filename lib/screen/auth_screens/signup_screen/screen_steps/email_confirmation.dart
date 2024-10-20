import 'package:flutter/material.dart';
import 'package:instagram_clone/screen/auth_screens/signup_screen/screen_steps/screen_step.dart';

class EmailConfirmationScreen extends StatelessWidget {
  const EmailConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ScreenStep(
            headerText: "Enter the confirmation code",
            description: "To confirm your account, enter 6 digits we sent to emal@instagram.clone.com.",
            inputLabel: "Confirmation code",
            onNextButtonPressed: () => Navigator.pushNamed(context, '/create-password'),
          )
      ),
    );
  }
}
