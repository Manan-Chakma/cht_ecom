import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserName extends StatelessWidget{

  final TextEditingController userNameController;

  UserName(this.userNameController);
  @override
  Widget build(BuildContext context) {
    return AuthInputs(
      controller: userNameController,
      labelText: 'Name',
      inputType: TextInputType.name,
      message: 'Enter Username',
    );
  }
}

class UserEmail extends StatelessWidget {
  final TextEditingController userEmailController;

  UserEmail(this.userEmailController);

  @override
  Widget build(BuildContext context) {
    return AuthInputs(
      controller: userEmailController,
      labelText: 'Email',
      inputType: TextInputType.emailAddress,
      message: 'Enter email',
    );
  }
}

class UserPhone extends StatelessWidget {
  final TextEditingController userPhoneController;

  UserPhone(this.userPhoneController);

  @override
  Widget build(BuildContext context) {
    return AuthInputs(
      controller: userPhoneController,
      labelText: 'Phone',
      labelHint: '017********',
      inputType: TextInputType.number,
      message: 'Enter Phone',
    );
  }
}

class UserPassword extends StatelessWidget {
  final TextEditingController controller;
  final bool confirm;

  UserPassword({this.controller, this.confirm: false});

  @override
  Widget build(BuildContext context) {
    String message = 'Enter Password';
    String passwordLabelText = 'Password';
    if (confirm) {
      message = 'Password do not match';
      passwordLabelText = 'Confirm Password';
    }
    return AuthInputs(
      controller: controller,
      labelText: passwordLabelText,
      isObscure: true,
      message: message,
    );
  }
}




class AuthInputs extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String labelHint;
  final bool isObscure;
  final TextInputType inputType;
  final String message;

  AuthInputs(
      {this.controller,
      this.labelText,
      this.labelHint = '',
      this.isObscure: false,
      this.inputType: TextInputType.text,
      this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
      child: Container(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.7,
          child: TextFormField(
            keyboardType: inputType,
            obscureText: isObscure,
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
                return message;
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}
