import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application_redux/Screens/HomeScreen/Models/NewsModel.dart';

class CellWidget extends StatelessWidget {
  final int index;
  final String urlToImage;
  final List<NewsModel> news;
  const CellWidget({Key key, this.index, this.urlToImage, this.news})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        padding: EdgeInsets.all(10),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Stack(children: <Widget>[
            ClipRRect(
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                child: Image.network(news[index].urlToImage),
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            Center(
                child: Text(
              '${news[index].title ?? "title"}',
              style: TextStyle(color: Colors.white, fontSize: 11),
            )),
          ]),
        ));
  }
}
