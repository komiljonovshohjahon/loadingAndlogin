import 'Actions.dart';
import 'Store.dart';

AppState reducers(AppState prevState, dynamic action) {

  if(action is GetJsonAction){
    print(action);
    print("In reducer");
    return AppState.copyWith(prevState: prevState, json: action.payload);
  }
  if(action is GetNews){
    print(action);
    return AppState.copyWith(prevState: prevState, news: action.news);
  }
  else {
    return AppState(json: prevState.json);
  }
}
