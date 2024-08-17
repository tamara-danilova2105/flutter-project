import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        child: Column(
          children: [
            Center(
              heightFactor: 10.0,
              child: SvgPicture.asset(
                  'assets/app-logos/instagram-clone-logo.svg',
                  semanticsLabel: 'instagram clone logo'
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () => print('log in'),
                      child: const Text('login')
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}