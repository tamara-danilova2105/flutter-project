import 'package:flutter/material.dart';
import 'package:instagram_clone/components/text_input_field.dart';
import 'package:instagram_clone/screen/auth_screens/components/auth_screen_padding.dart';

import '../constants.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen ({super.key});

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
                  const Text("Create a password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: authFormGapValue),
                  const Text("Create a password with at least 7 letters or numbers. It should be something other can't guess"),
                  const SizedBox(height: authFormGapValue),
                  const TextInputField(label: 'Password'),
                  const SizedBox(height: authFormGapValue),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                        onPressed: () => print('clicked'),
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