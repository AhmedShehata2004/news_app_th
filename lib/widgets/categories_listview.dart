import 'package:flutter/material.dart';
import 'package:news_app_th/models/category_model.dart';
import 'package:news_app_th/widgets/category_card.dart';

class CategoriesListview extends StatelessWidget {
   CategoriesListview({super.key});
    List<CategoryModel>  categories = [
    CategoryModel(name: 'Business', image: 'assets/business.png'),
    CategoryModel(name: 'Entertainment', image: 'assets/entertaiment.png'),
    CategoryModel(name: 'General', image: 'assets/general.png'),
    CategoryModel(name: 'Health', image: 'assets/health.png'),
    CategoryModel(name: 'Science', image: 'assets/science.png'),
    CategoryModel(name: 'Sports', image: 'assets/sports.png'),
    CategoryModel(name: 'Technology', image: 'assets/technology.png'),
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: CategoryCard(
                categoryModel: categories[index],
              ),
            );
          },
        ),
      );
  }
}