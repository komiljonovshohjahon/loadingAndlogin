import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final AppBar appBar;

  /// you can add more fields that meet your needs
  const CustomAppBarWidget({Key key, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
