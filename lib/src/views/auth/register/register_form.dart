import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget{
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}
class _RegistrationFormState extends State<RegistrationForm>{
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
        child: Form(
            key: _registerFormKey,
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
                TextFormField(
                  controller: userEmailController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  controller: userPasswordController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  controller: userConfirmPasswordController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Confirm Password';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_registerFormKey.currentState.validate()) {
                        Scaffold.of(context)
                            .showSnackBar(SnackBar(content: Text('Successful')));
                      }
                    },
                    child: Text('Register')
                ),
              ],
            )),
      ),
    );
  }

}
