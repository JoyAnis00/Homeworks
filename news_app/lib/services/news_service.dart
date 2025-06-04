import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  Future<List<Article>> getNews(String category) async {
    try {
      Response response = await dio.get(
        "https://newsdata.io/api/1/latest?apikey=pub_661272ea1b76c88987bf91c2712bc0ea9f2b4&country=eg&category=$category",
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];
      List<Article> news = [];
      for (var article in articles) {
        news.add(Article.fromJson(article));
      }
      return news;
    } catch (e) {
      // Handle the exception

      return [];
    }
  }
}
