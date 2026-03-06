import 'package:flutter/material.dart';
import 'package:news_app_th/models/category_model.dart';
import 'package:news_app_th/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => CategoryView(categoryName: categoryModel.name)));
      },

      child: Container(
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(categoryModel.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(
            categoryModel.name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
