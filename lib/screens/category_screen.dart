import 'package:flutter/material.dart';
import 'package:news_app/screens/news_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});

  final String category ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          )
        ],
      ),
    );
  }
}
