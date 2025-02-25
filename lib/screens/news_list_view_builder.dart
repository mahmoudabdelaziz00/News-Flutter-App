import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import '../widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });

  final String category ;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // List<ArticleModel> article = [];

  // bool isLoading = true ;
  //   //
  //   // @override
  //   // void initState() {
  //   //   super.initState();
  //   //   getGeneralNews();
  //   // }
  //   //
  //   // Future<void> getGeneralNews() async {
  //   //   article = await NewsService(Dio()).getNews();
  //   //   isLoading = false ;
  //   //   setState(() {
  //   //   });
  //   // }

  var future ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getTopHeadLines(
      category: widget.category
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            article: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(child: Text("OOPS there was an error, try later")),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );

    // return isLoading
    //     ? SliverToBoxAdapter(
    //     child: Center(
    //     child: CircularProgressIndicator()))
    //     : article.isEmpty
    //   ? NewsListView(
    //   article: article,
    // ) : SliverToBoxAdapter(
    //   child: Center(child: Text("OOPS there was an error, try later")),
    // );
  }
}
