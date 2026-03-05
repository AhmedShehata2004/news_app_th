import 'package:flutter/material.dart';
import 'package:news_app_th/models/artical_model.dart';
import 'package:news_app_th/widgets/news_tile.dart';

class NewsSliverView extends StatelessWidget {
  final List<ArticalModel> articals;

  const NewsSliverView({super.key, required this.articals});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return NewsTile(articalModel: articals[index]);
      }, childCount: articals.length),
    );
  }
}
