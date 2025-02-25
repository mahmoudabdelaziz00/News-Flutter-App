import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.cateogry});

  final CategoryModel cateogry ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return CategoryScreen(
            category: cateogry.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(cateogry.imageAssetUrl),
              ),
              borderRadius: BorderRadius.circular(14)
          ),
          child: Center(
            child: Text(
              '${cateogry.categoryName}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
