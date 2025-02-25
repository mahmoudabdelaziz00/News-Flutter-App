import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=a0a7726f80b24f7fb6d7551c982bc1b4&country=us&category=$category');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    }catch (e){
      return [];
    }

  }

  // void getGeneralNews() async {
  //   final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=a0a7726f80b24f7fb6d7551c982bc1b4');
  //   print(response);
  // }
  //
  // void getSportsNews() async {
  //   final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=a0a7726f80b24f7fb6d7551c982bc1b4');
  //   print(response);
  // }

}