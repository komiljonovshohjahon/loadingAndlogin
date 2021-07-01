import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Widgets/Banner.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Widgets/CustomAppBarWidget.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Widgets/DropdownWidget.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Widgets/FieldWidget.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Widgets/FormWidget.dart';

import 'Widgets/ButtonsRowWidget.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarWidget(
          appBar: AppBar(),
        ),
        body: Container(
          child: Column(
            children: [
              BannerWidget(),
              FormWidget()
            ],
          ),
        ));
  }
}
