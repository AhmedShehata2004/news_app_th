import 'package:flutter/material.dart';
import 'package:news_app_th/widgets/news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
    final String categoryName;

    @override
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.brown,
          title: Text('$categoryName Category ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
        ),
        body: CustomScrollView(slivers: [newListViewBuilder(categoryName: categoryName)]),
      ),
    );
  }
}