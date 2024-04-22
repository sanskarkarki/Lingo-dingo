import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lingodingo/core/theme/theme.dart';
import 'package:flutter_lingodingo/pages/login_page.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
      // home: const LandingPage(),
    );
  }
}
