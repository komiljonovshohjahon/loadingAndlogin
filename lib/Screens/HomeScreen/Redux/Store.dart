import 'package:news_application_redux/Screens/HomeScreen/Models/NewsModel.dart';

class AppState{
  Map<String, dynamic> json;
  List<NewsModel> news;

  AppState({this.json, this.news});

  AppState.copyWith({AppState prevState, Map<String, dynamic> json, List<NewsModel> news}){
    this.json = json ?? prevState.json;
    this.news = news ?? prevState.news;
  }

  AppState.initial(){
    this.json = {
      "chaincodeInputArgs": ["0", "0", "0", "0", "0", "0"],
      "transactionID" : "test"
    };
    this.news = [NewsModel("Text", "Text"), NewsModel("Text", "Text")];
  }
}