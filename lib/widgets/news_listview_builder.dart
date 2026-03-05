import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_th/models/artical_model.dart';
import 'package:news_app_th/services/news_services.dart';
import 'package:news_app_th/widgets/news_sliver_view.dart';

class newListViewBuilder extends StatefulWidget {
  newListViewBuilder({super.key});

  @override
  State<newListViewBuilder> createState() => _newListViewBuilderState();
}

class _newListViewBuilderState extends State<newListViewBuilder> {
  
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getGeneralNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticalModel>>(
      // future is a parameter that takes a future object, and it will execute the future and rebuild the widget when the future completes.
      // so we can use it to fetch data from an API and display it in the widget. but we should be careful when using it,
      // because if we put the future in the build method, it will be executed every time the widget rebuilds, which can cause performance issues.
      // so we should use it in a way that it only executes once, for example by using a stateful widget and storing the future in a variable that is initialized in the initState method.
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsSliverView(articals: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(child: Text('Error: ${snapshot.error}')),
          );
        } else {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
