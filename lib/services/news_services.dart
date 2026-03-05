import 'package:dio/dio.dart';
import 'package:news_app_th/models/artical_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

 Future<List<ArticalModel>> getGeneralNews() async {
    var response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=7ede613417214bdbbdd410922e8e2171',
    );

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];

    List<ArticalModel> articalsList = [];

    for (var artical in articles) {
      ArticalModel articalModel = ArticalModel(
        title: artical['title'],
        description: artical['description'],
        imageUrl: artical['urlToImage'],
      );
      articalsList.add(articalModel);
    }

    return articalsList;
  }
}
