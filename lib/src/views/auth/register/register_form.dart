import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sobon/src/views/auth/common/common_widgets.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _registerFormKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final userPhoneController = TextEditingController();
  final userEmailController = TextEditingController();
  final userPasswordController = TextEditingController();
  final userConfirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                  key: _registerFormKey,
                  child: Column(
                    children: <Widget>[
                      UserName(userNameController),
                      UserEmail(userEmailController),
                      UserPhone(userPhoneController),
                      UserPassword(controller: userPasswordController),
                      UserPassword(
                          controller: userConfirmPasswordController, confirm: true),
                      Container(
                        alignment: Alignment.center,
                        child: FractionallySizedBox(
                          widthFactor: 0.7,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_registerFormKey.currentState.validate()) {
                                  Scaffold.of(context).showSnackBar(
                                      SnackBar(content: Text('Successful')));
                                }
                              },
                              child: Text('Register')),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
