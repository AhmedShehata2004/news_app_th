import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_th/models/artical_model.dart';
import 'package:news_app_th/services/news_services.dart';
import 'package:news_app_th/widgets/news_sliver_view.dart';

class newListViewBuilder extends StatefulWidget {
  const newListViewBuilder({
    super.key,
  });

  @override
  State<newListViewBuilder> createState() => _newListViewBuilderState();
}

class _newListViewBuilderState extends State<newListViewBuilder> {

   List<ArticalModel> articals = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articals = await NewsServices(Dio()).getGeneralNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? SliverFillRemaining(
      hasScrollBody: false,
      child: Center(child: CircularProgressIndicator())) : NewsSliverView(articals: articals);
  }
}
