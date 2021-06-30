import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Widgets/Banner.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Widgets/DropdownWidget.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Widgets/FieldWidget.dart';

import 'Widgets/ButtonsRowWidget.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () => {},
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Text",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: false,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () => {},
                child: Icon(Icons.more_vert, color: Colors.black,),
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              BannerWidget(),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(30),
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
                          label: "Enter Password",
                          icon: Icon(Icons.lock_outline)),
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
                  )
              )
            ],
          ),
        ));
  }
}
