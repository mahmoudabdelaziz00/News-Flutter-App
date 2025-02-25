import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {

  final List<ArticleModel> article;

  const NewsListView({super.key, required this.article});

  // indicator
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: article.length ,
              (context ,index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: NewsTile(
                articleModel: article[index],
              ),
            );
          }),
    );
  }
}
