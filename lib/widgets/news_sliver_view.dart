import 'package:flutter/material.dart';
import 'package:news_app_th/models/artical_model.dart';
import 'package:news_app_th/widgets/news_tile.dart';

class NewsSliverView extends StatelessWidget {
   NewsSliverView({super.key});

    List <ArticalModel>  articals = [
    ArticalModel(
      title: 'Flutter 3.0 is here with amazing features',
      description:
          'Flutter 3.0 is here with amazing features Flutter 3.0 is here with amazing features Flutter 3.0 is here with amazing features',
      imageUrl: 'assets/business.png',
    ),
    ArticalModel(
      title: 'Flutter 3.0 is here with amazing features',
      description:
          'Flutter 3.0 is here with amazing features Flutter 3.0 is here with amazing features Flutter 3.0 is here with amazing features',
      imageUrl: 'assets/business.png',
    ), 
      ArticalModel(
        title: 'Flutter 3.0 is here with amazing features',
        description:
            'Flutter 3.0 is here with amazing features Flutter 3.0 is here with amazing features Flutter 3.0 is here with amazing features',
        imageUrl: 'assets/business.png',
      ),
        ArticalModel(
          title: 'Flutter 3.0 is here with amazing features',
          description:
              'Flutter 3.0 is here with amazing features Flutter 3.0 is here with amazing features Flutter 3.0 is here with amazing features',
          imageUrl: 'assets/business.png',
        ),
            ArticalModel(
              title: 'Flutter 3.0 is here with amazing features',
              description:
                  'Flutter 3.0 is here with amazing features Flutter 3.0 is here with amazing features Flutter 3.0 is here with amazing features',
              imageUrl: 'assets/business.png',
            ),
  ];


  @override
  Widget build(BuildContext context) {
    // use SliverList to display the list of news articles in a scrollable view with a custom scroll view
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsTile(
            articalModel: articals[index],
          );
        },
        childCount: articals.length,
      ),
    );
   
  }
}