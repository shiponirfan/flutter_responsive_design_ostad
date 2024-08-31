import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_ostad/presentation/screens/home_screen.dart';

void main() {
  runApp(const ResponsiveDesignApp());
}

class ResponsiveDesignApp extends StatelessWidget {
  const ResponsiveDesignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
