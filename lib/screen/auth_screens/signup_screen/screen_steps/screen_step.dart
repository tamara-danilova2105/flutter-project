import 'package:flutter/material.dart';
import 'package:instagram_clone/components/text_input_field.dart';
import 'package:instagram_clone/screen/auth_screens/components/auth_screen_padding.dart';

import '../../constants.dart';

class ScreenStep extends StatelessWidget {

  final String headerText;
  final String description;
  final String inputLabel;
  final bool ? emailConfirmationStep;
  final void Function() onNextButtonPressed;
  final Function() ? onResendConfirmationCodeButtonPressed;

  const ScreenStep({
    super.key,
    required this.headerText,
    required this.description,
    required this.inputLabel,
    this.emailConfirmationStep = false,
    required this.onNextButtonPressed,
    this.onResendConfirmationCodeButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AuthScreenPadding(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24.0,),
            Text(headerText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: authFormGapValue),
            Text(description),
            const SizedBox(height: authFormGapValue),
            TextInputField(label: inputLabel),
            const SizedBox(height: authFormGapValue),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                  onPressed: () => onNextButtonPressed,
                  child: const Text('Next')
              ),
            ),
            const SizedBox(height: authFormGapValue),
            if (emailConfirmationStep == true)
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => onResendConfirmationCodeButtonPressed,
                  child: const Text("Didn't get the code?")
              ),
            ),
          ],
        ),
      ),
    );
  }
}
