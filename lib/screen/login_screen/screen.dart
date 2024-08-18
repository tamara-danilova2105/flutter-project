import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/components/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Center(
                  child: SvgPicture.asset(
                    'assets/app-logos/instagram-clone-logo.svg',
                    semanticsLabel: 'instagram clone logo',
                  ),
                )
              ),
              Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const TextInputField(label: 'Username or email'),
                          const SizedBox(height: 12.0),
                          const TextInputField(label: 'Password'),
                          const SizedBox(height: 12.0),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(onPressed: () => print('Login Clicked'), child: const Text('Login')),
                          ),
                          TextButton(onPressed: () => print('Forgot Password'), child: const Text('Forgot password?'))
                        ],
                      ),
                      Column(
                        children: [
                          OutlinedButton(onPressed: () => 'Create new account', child: const Text('Create new account')),
                          const InkWell(child: Text('canshecode.com'),)
                        ],
                      )
                    ],
                  )
              )
            ],
          ),
      ),
    );
  }
}