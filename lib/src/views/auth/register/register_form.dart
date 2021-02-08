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
                ElevatedButton(
                    onPressed: () {
                      if (_registerFormKey.currentState.validate()) {
                        Scaffold.of(context)
                            .showSnackBar(SnackBar(content: Text('Successful')));
                      }
                    },
                    child: Text('Submit')
                ),
              ],
            )),
      ),
    );
  }

}
