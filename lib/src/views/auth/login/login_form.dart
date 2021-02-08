
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
  final userNameController = TextEditingController();
  final userPhoneController = TextEditingController();


  @override
  void dispose() {
    userNameController.dispose();
    userPhoneController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            key: _loginFormKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: userNameController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Username';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: userPhoneController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Phone';
                    }
                    return null;
                  },
                ),

                ElevatedButton(
                    onPressed: () {
                      if (_loginFormKey.currentState.validate()) {
                        Scaffold.of(context)
                            .showSnackBar(SnackBar(content: Text('Successful')));
                      }
                    },
                    child: Text('Login')
                ),
                GestureDetector(onTap: (){
                  Navigator.pushNamed(context, '/registration');
                }, child: Text('Open an account')),
                GestureDetector(onTap: (){
                  Navigator.pushNamed(context, '/dashboard');
                }, child: Text('dashboard'))

              ],
            )),
      ),
    );
  }
}