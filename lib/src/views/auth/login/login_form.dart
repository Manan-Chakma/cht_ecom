import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sobon/src/views/auth/common/common_widgets.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  final _loginFormKey = GlobalKey<FormState>();
  final userPhoneController = TextEditingController();
  final userPasswordController = TextEditingController();

  @override
  void dispose() {
    userPhoneController.dispose();
    userPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                  key: _loginFormKey,
                  child: Column(
                    children: <Widget>[
                      UserPhone(userPhoneController),
                      UserPassword(controller: userPasswordController),
                      Container(
                        alignment: Alignment.center,
                        child: FractionallySizedBox(
                          widthFactor: 0.7,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_loginFormKey.currentState.validate()) {
                                  Scaffold.of(context).showSnackBar(
                                      SnackBar(content: Text('Successful')));
                                }
                              },
                              child: Text('Login')),
                        ),
                      ),
                      Text("Don't have an account?"),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/registration');
                          },
                          child: Text('Sign Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo))),
                      // GestureDetector(
                      //     onTap: () {
                      //       Navigator.pushNamed(context, '/dashboard');
                      //     },
                      //     child: Text('dashboard'))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}


class LoginButton {}

