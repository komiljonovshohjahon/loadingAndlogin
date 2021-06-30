import 'package:flutter/cupertino.dart';

class NewsModel {
  final String title;
  final String urlToImage;

  NewsModel(this.title, this.urlToImage);

  factory NewsModel.fromJson(Map<String, dynamic> newsJson){
    return NewsModel(newsJson["title"], newsJson["urlToImage"]);
  }
}