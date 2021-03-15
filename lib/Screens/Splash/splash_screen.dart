import 'package:authentication/Components/RoundButton.dart';
import 'package:authentication/Screens/Login/login.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
      "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            flex:5,
            child: PageView.builder(itemBuilder:  (context, index) => SplashContent(
        imageUrl: splashData[index]["image"],
            text: splashData[index]['text'],
        ),
              itemCount: splashData.length,
            ),
          ),
          Expanded(
            flex: 2,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                RoundButton(text:'Go',function:
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );

              }),
                SizedBox(height: 20,)
              ],


            ),
          ),
        ],
      ),
    ));
  }
}



class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
  this.text,
    this.imageUrl
  }) : super(key: key);
 final String text ,imageUrl;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text('StarMoney',
            style: TextStyle(
                fontSize: 25,
                fontFamily: "Muli",
                color: kPrimaryColor)),
        Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontFamily: "Muli",
            )),
        Spacer(),
        Image.asset(
         imageUrl,
          height: 250,
        ),
        Spacer(),
      ],
    );
  }
}
