import 'package:dio/dio.dart';
import 'package:news_app_th/models/artical_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  String baseUrl ="https://newsapi.org/v2/top-headlines?";
  String apiKey = "7ede613417214bdbbdd410922e8e2171";
  String country = "us";

 Future<List<ArticalModel>> getTopHeadLines({required String category}) async {
    var response = await dio.get(
      '$baseUrl country=$country&category=$category&apiKey=$apiKey',
    );

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];

    List<ArticalModel> articalsList = [];

    for (var artical in articles) {
      ArticalModel articalModel = ArticalModel.fromJson(artical);
      articalsList.add(articalModel);
    }

    return articalsList;
  }
}
