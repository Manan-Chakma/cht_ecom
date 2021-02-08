import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sobon/src/views/auth/login/login_form.dart';
import 'package:splashscreen/splashscreen.dart';

class SimpleSplashScreen extends StatefulWidget {
  @override
  _SimpleSplashScreenState createState() => _SimpleSplashScreenState();
}

class _SimpleSplashScreenState extends State<SimpleSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new LoginForm(),
      title: new Text(
        'Welcome to CHT',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}




