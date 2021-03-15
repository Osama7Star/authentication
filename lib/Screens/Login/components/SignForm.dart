import 'package:authentication/Components/RoundButton.dart';
import 'package:authentication/Screens/succesful/succesful.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import 'form_error.dart';

class Form1 extends StatefulWidget {
  @override
  _Form1State createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  void addEmailError({String error}) {
    if (!emailError.contains(error))
      setState(() {
        emailError.add(error);
      });
  }

  void addPasswordError({String error}) {
    if (!passwordError.contains(error))
      setState(() {
        passwordError.add(error);
      });
  }

  void removeEmailError({String error}) {
    if (emailError.contains(error))
      setState(() {
        emailError.remove(error);
      });
  }

  void removePasswordError({String error}) {
    if (passwordError.contains(error))
      setState(() {
        passwordError.remove(error);
      });
  }

  final List<String> emailError = [];
  final List<String> passwordError = [];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          FormError(errors: emailError),
          SizedBox(
            height: 10,
          ),
          buildPasswordFormField(),
          FormError(errors: passwordError),
          SizedBox(),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [

              Checkbox(
                  value: true,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {

                  }),
              Text('Remember Me '),
            Spacer(),
              Text("Forget Password",style: TextStyle(decoration: TextDecoration.underline),)
            ],
          ),
          SizedBox(height: 30),
          RoundButton(
              text: 'Login',
              function: () {
                if (_formKey.currentState.validate()) {
                  print('test');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => succesful()),
                  );
                }
              }),
        ],
      ),
    );
  }

  //// for text
  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeEmailError(error: 'Email is empty');
          print('email is full ');
        }
        if (emailValidatorRegExp.hasMatch(value)) {
          removeEmailError(error: 'Email is not true');
          print('email became correct ');
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          print('Email is empty');
          addEmailError(error: 'Email is empty');
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          print('Email is not true');

          addEmailError(error: 'Email is not true');
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter email here',
        labelText: 'Email',
        prefix: SvgPicture.asset(
          'assets\icons\facebook-2.svg',
          height: 20,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
      ),
    );
  }

////for email
  TextFormField buildPasswordFormField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty) {
          removePasswordError(error: "Password is empty");
        }
        if (value.length >= 5) {
          removePasswordError(error: "Password is less than 5 letters");
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          addPasswordError(error: "Password is empty");

          return "";
        } else if (value.length < 5) {
          addPasswordError(error: "Password is less than 5 letters");
          return "";
        }

        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter Password here',
        labelText: 'Password',
        prefix: SvgPicture.asset(
          'assets\icons\facebook-2.svg',
          height: 20,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
      ),
    );
  }
}

