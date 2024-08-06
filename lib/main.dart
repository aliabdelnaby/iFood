import 'package:flutter/material.dart';
import 'package:ifood/core/router/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'iFood',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      routerConfig: router,
    );
  }
}
