import 'package:flutter/material.dart';
import 'features/splash/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iFood',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const SplashView(),
    );
  }
}
