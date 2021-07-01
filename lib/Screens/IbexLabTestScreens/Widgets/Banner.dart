import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Widgets/BannerIconWidget.dart';

class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF2D2D59),
      height: 140,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(children: [
              BannerIconWidget()
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
