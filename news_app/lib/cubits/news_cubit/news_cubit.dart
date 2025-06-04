import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../services/news_service.dart';
import 'news_states.dart';

class NewsCubit extends Cubit <NewsStates> {
  NewsCubit() : super(NewsLoadingState());
  void getNews(String category) async{
    try {
      emit(NewsLoadingState());
      final articles = await NewsService(Dio()).getNews(category);
      emit(NewsSuccessState(articles));
    } catch (e) {
      emit(NewsErrorState(e.toString()));
    }
  }
}