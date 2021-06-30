import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color(0xFF2D2D59),
      height: 140,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFFF6D00)),
                child: Center(
                  child: GestureDetector(
                    child: Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(children: [
              Text(
                "Store Admin Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ]),
          )
        ],
      ),
    );
  }

}