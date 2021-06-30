import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonRowWidget extends StatelessWidget {
  final Color color;
  final String text;

  const ButtonRowWidget({Key key, this.color, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 150,
      child: TextButton(
        onPressed: () {},
        child: Text(text),
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: color,
          onSurface: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
    );
  }
}
