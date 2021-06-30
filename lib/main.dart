import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Screen1.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'Screens/HomeScreen/HomeScreen.dart';
import 'Screens/HomeScreen/Redux/Reducers.dart';
import 'Screens/HomeScreen/Redux/Store.dart';
import 'Screens/IbexLabTestScreens/Screen2.dart';

void main() {
  Store<AppState> _store = Store(reducers,
      initialState: AppState.initial(), middleware: [thunkMiddleware]);
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store store;

  const MyApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Screen2(),
        ));
  }
}
