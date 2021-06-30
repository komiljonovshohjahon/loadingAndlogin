import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  final String hint;

  const Screen1({Key key, this.hint}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Color(0xFF2D2D59),
        child: Center(
          child: Image.asset('assets/images/yoshop_logo.png',
          height: 80, width: 150,),
      ),
    ));
  }
}
