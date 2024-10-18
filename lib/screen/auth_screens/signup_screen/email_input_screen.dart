import 'package:flutter/material.dart';
import 'package:instagram_clone/components/text_input_field.dart';
import 'package:instagram_clone/screen/auth_screens/components/auth_screen_padding.dart';
import 'package:instagram_clone/screen/auth_screens/constants.dart';

class EmailInputScreen extends StatelessWidget {
  const EmailInputScreen ({super.key});

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
                  const Text("What's your email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: authFormGapValue),
                  const Text("Enter the email where you can be contracted. No one will see this on your profile"),
                  const SizedBox(height: authFormGapValue),
                  const TextInputField(label: 'Email'),
                  const SizedBox(height: authFormGapValue),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                        onPressed: () => Navigator.pushNamed(context, '/signup-email-confirmation'),
                        child: const Text('Next')
                    ),
                  ),
                  const SizedBox(height: authFormGapValue),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () => print("Didn't get!"),
                        child: const Text("Didn't get the code?")
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}