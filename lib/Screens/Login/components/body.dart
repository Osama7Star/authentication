import 'package:authentication/Components/RoundButton.dart';
import 'package:authentication/Screens/Login/components/social_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'SignForm.dart';

class Body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Welcome Back ',
                  style: TextStyle(color: kPrimaryColor, fontSize: 25)),
              Text(
                'Sign in for more information and to get connected to the app \n login is important',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              Form1(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SoicalMeida(icon: 'assets/icons/facebook-2.svg'),

                  SoicalMeida(icon: 'assets/icons/twitter.svg'),
                  SoicalMeida(icon: 'assets/icons/google-icon.svg')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
