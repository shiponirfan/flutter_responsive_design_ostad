import 'package:flutter/material.dart';

class AppLogoText extends StatelessWidget {
  const AppLogoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Humming\nBird .'.toUpperCase(),
      style: const TextStyle(fontSize: 18, height: 1),
    );
  }
}
