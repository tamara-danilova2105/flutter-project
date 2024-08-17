import 'package:flutter/material.dart';
import 'package:instagram_clone/screen/login/login.dart';

void main() {
  runApp(const OurInstagramClone());
}

class OurInstagramClone extends StatelessWidget {
  const OurInstagramClone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen());
  }
}

