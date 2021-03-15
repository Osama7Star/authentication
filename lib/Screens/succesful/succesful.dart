import 'package:authentication/Components/RoundButton.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class succesful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: Image.asset('assets/images/success.png'),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                'Successfullll',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                    fontSize: 20),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundButton(text: 'Go To Home', function: () {}),
              ),
              Spacer(),
            ],
          ),
        )
      ],
    ));
  }
}
