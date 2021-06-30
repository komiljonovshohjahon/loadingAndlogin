import 'package:news_application_redux/Screens/HomeScreen/Models/NewsModel.dart';

abstract class Action{}

class Convert extends Action{}


class GetJsonAction extends Action{
  Map<String, dynamic> payload;
  GetJsonAction(this.payload);
}

class GetJoke extends Action{
  String payload;

  GetJoke(this.payload);
}

class GetNews extends Action{
  List<NewsModel> news;

  GetNews(this.news);
}

class ErrorOccurredAction extends Action{
  String message;

  ErrorOccurredAction(this.message);
}


