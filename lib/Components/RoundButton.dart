import 'package:flutter/material.dart';
class RoundButton extends StatelessWidget {
  const RoundButton({
  @required  this.text,
    @required  this.function,
    Key key,
  }) : super(key: key);
  final String text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,

      child: buildFlatButton(),
    );
  }

  FlatButton buildFlatButton() {
    return FlatButton(
      color: Colors.red,
      onPressed: function,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),

      child: Text(
        text,
        style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),


      ),
    );
  }
}