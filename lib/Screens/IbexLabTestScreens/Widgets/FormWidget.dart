import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ButtonsRowWidget.dart';
import 'DropdownWidget.dart';
import 'FieldWidget.dart';

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 464,
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            DropdownWidget(
              label: "Cloud Server URL",
              icon: Icon(Icons.cloud_queue),
              items: ["Test1", "Test2"],
            ),
            DropdownWidget(
                label: "Domain",
                icon: Icon(Icons.dashboard_outlined),
                items: ["Test1", "Test2"]),
            FieldWidget(
                label: "Store ID",
                icon: Icon(Icons.store_mall_directory_outlined)),
            FieldWidget(
                label: "Enter Password", icon: Icon(Icons.lock_outline)),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonRowWidget(color: Color(0xFFFF6D00), text: "test1"),
                  ButtonRowWidget(color: Color(0xFF6D6D70), text: "test2")
                ],
              ),
            )
          ],
        ));
  }
}
