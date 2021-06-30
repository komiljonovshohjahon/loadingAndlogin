import 'dart:convert';
import 'package:news_application_redux/Screens/HomeScreen/Models/NewsModel.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:http/http.dart' as http;
import 'Actions.dart';
import 'Store.dart';



ThunkAction<AppState> getJsonValuesAsync(){
  return (Store<AppState> store) async {
    Uri url = Uri.parse("http://13.209.43.204:5080/block");
    var headers = {"Content-Type": "Application/json-rpc"};
    var body = json.encode({
      "jsonrpc": "2.0",
      "id": "00456",
      "method": "getTransaction",
      "params": {
        "transactionId":
        "6a28e00918a51336fb09e6f01ce9c056fd9eb452c0701d517c5f1db555ca5821"
      }
    });

    try {
      var response = await http.post(url, headers: headers, body: body);
      Map<String, dynamic> responseMap = json.decode(response.body);
      print(responseMap["result"]["resultData"]);
      store.dispatch(GetJsonAction(responseMap["result"]["resultData"]));
    } catch(e) {
      print("failed with $e");
      store.dispatch("Failed to get args");
    }
  };
}


ThunkAction<AppState> getNewsAsync(){
  return (Store<AppState> store) async {
    Uri url = Uri.parse("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=d5867d798aea4acb9de19ccf058cfb73");
    try {
      var response = await http.get(url);
      Map<String, dynamic> responseMap = json.decode(response.body);
      List<dynamic> newsJsonObjects = responseMap["articles"];
      List<NewsModel> news = [];
      for(int i = 0; i < newsJsonObjects.length; i++){
        news.add(NewsModel.fromJson(newsJsonObjects[i]));
      }
      print(newsJsonObjects);
      store.dispatch(GetNews(news));
    } catch(e) {
      print("failed with $e");
      store.dispatch("Failed to get args");
    }
  };
}
