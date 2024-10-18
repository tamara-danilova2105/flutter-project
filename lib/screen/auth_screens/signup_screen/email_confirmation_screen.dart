import 'package:flutter/material.dart';
import 'package:instagram_clone/components/text_input_field.dart';
import 'package:instagram_clone/screen/auth_screens/components/auth_screen_padding.dart';

import '../constants.dart';

class EmailConfirmationScreen extends StatelessWidget {
  const EmailConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: AuthScreenPadding(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24.0,),
                  const Text("Enter the confirmation code",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: authFormGapValue),
                  const Text("To confirm your account, enter the 6-digit code we sent to email@instaclone.com"),
                  const SizedBox(height: authFormGapValue),
                  const TextInputField(label: 'Confirmation code'),
                  const SizedBox(height: authFormGapValue),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                        onPressed: () => Navigator.pushNamed(context, '/create-password'),
                        child: const Text('Next')
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
