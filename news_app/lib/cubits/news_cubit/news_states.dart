import '../../models/articles_model.dart';

abstract class NewsStates {}

class NewsErrorState extends NewsStates {
  final String error;
  NewsErrorState(this.error);
}

class NewsLoadingState extends NewsStates {}

class NewsSuccessState extends NewsStates {
  final List<Article> articles;
  NewsSuccessState(this.articles);
}
