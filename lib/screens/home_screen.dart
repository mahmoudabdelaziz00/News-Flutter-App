import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'News',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
                'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
                child: SizedBox(height: 32,),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),

          ],
        ),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(height: 32,),
        //     Expanded(
        //         child: NewsListView(),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}


