import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}