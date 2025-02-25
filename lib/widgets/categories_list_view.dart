import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
   CategoriesListView({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(
        imageAssetUrl: 'assets/technology.jpeg',
        categoryName: 'business',
    ),
    CategoryModel(
        imageAssetUrl: 'assets/entertaiment.avif',
        categoryName: 'entertainment',
    ),
    CategoryModel(
        imageAssetUrl: 'assets/technology.jpeg',
        categoryName: 'general',
    ),
    CategoryModel(
        imageAssetUrl: 'assets/health.avif',
        categoryName: 'health',
    ),
    CategoryModel(
        imageAssetUrl: 'assets/science.avif',
        categoryName: 'science',
    ),
    CategoryModel(
        imageAssetUrl: 'assets/entertaiment.avif',
        categoryName: 'sports',
    ),
    CategoryModel(
        imageAssetUrl: 'assets/technology.jpeg',
        categoryName: 'technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context , index){
          return CategoryCard(
            cateogry: categories[index],
          );
        },
      ),
    );
  }
}
