import 'package:flutter/material.dart';
import 'package:sobon/src/views/auth/register/register_form.dart';
import 'package:sobon/src/views/dashboard/dashboard.dart';
import 'package:sobon/src/views/splash_screen/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/registration':(context) => RegistrationForm(),
        '/dashboard':(context) => DashboardUI()
      },
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return new SimpleSplashScreen();
  }
}
