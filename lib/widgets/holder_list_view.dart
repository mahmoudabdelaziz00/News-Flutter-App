// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_tile.dart';
//
// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});
//
//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }
//
// class _NewsListViewState extends State<NewsListView> {
//
//   List<ArticleModel> article = [];
//
//   bool isLoading = true ;
//
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }
//
//   Future<void> getGeneralNews() async {
//     article = await NewsService(Dio()).getNews();
//     isLoading = false ;
//     setState(() {
//
//     });
//   }
//
//   // indicator
//   @override
//   Widget build(BuildContext context) {
//     return isLoading ? SliverToBoxAdapter(
//       child: Center(
//         child: CircularProgressIndicator(),),) : SliverList(
//       delegate: SliverChildBuilderDelegate(
//           childCount: article.length ,
//               (context ,index){
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 22),
//               child: NewsTile(
//                 articleModel: article[index],
//               ),
//             );
//           }),
//     );
//   }
// }
