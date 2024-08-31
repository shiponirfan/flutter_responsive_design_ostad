import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_ostad/presentation/screens/home_screen.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await windowManager.ensureInitialized();
    WindowOptions windowOptions = const WindowOptions(
        minimumSize: Size(400, 600),
        center: true,
        title: 'Responsive Design APP');
    windowManager.waitUntilReadyToShow(
      windowOptions,
      () async {
        await windowManager.show();
        await windowManager.focus();
      },
    );
  }

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
