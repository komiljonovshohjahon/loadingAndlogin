import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:news_application_redux/Screens/HomeScreen/Redux/Middleware.dart';
import 'package:news_application_redux/Screens/HomeScreen/Redux/Store.dart';
import 'package:news_application_redux/Screens/HomeScreen/Widgets/CellWidget.dart';

class HomeScreen extends StatelessWidget{
  final String title;

  const HomeScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StoreProvider.of<AppState>(context).dispatch(getNewsAsync());
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(state.news.length ?? 10, (index) {
            return CellWidget(index: index, news: state.news,);
          }),
        ),
      ),
    );
  }
}