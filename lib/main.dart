import 'package:flutter/material.dart';
import 'package:sobon/src/views/auth/register/register_form.dart';
import 'package:sobon/src/views/splash_screen/splash_screen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/registration':(context) => RegistrationForm()
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
