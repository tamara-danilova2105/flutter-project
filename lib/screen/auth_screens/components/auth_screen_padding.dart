import 'package:flutter/material.dart';

class AuthScreenPadding extends StatelessWidget {
  final Widget child;
  const AuthScreenPadding({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: child,
    );
  }
}
