import 'package:flutter/material.dart';
import 'package:login_signup_ui/pages/login_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:login_signup_ui/pages/register_page.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(Duration(seconds: 5));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Locker UI',
      theme: ThemeData(fontFamily: 'Ubuntu'),
      home: RegisterPage(),
    );
  }
}
