import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  final _loginFormKey = GlobalKey<FormState>();
  final userPasswordController = TextEditingController();
  final userPhoneController = TextEditingController();

  @override
  void dispose() {
    userPasswordController.dispose();
    userPhoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 3,
            child: Container(color: Colors.white,),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.teal,
              child: Form(
                  key: _loginFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      UserPhone(),
                      UserPassword(),
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
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/registration');
                          },
                          child: Text('Open an account')),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/dashboard');
                          },
                          child: Text('dashboard'))
                    ],
                  )),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(color: Colors.white,),
          ),

        ],

      ),
    );
  }
}

class UserPhone extends StatelessWidget {
  final userPhoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return LoginFormInput(userPhoneController, 'phone', '017********');
  }
}

class UserPassword extends StatelessWidget {
  final userPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return LoginFormInput(userPasswordController, 'password', '');
  }

}

class LoginButton {}

class LoginFormInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String labelHint;

  LoginFormInput(this.controller, this.labelText, this.labelHint);


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FractionallySizedBox(
        widthFactor: 0.7,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: labelText,
            hintText: labelHint,
            labelStyle: TextStyle(
              color: Color(0xFF6200EE),
            ),
          ),
          controller: controller,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please Enter Username';
            }
            return null;
          },
        ),
      ),
    );
  }
}
