class ArticalModel {
  final String title;
  final String ? description;
  final String ? imageUrl;

  ArticalModel({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory ArticalModel.fromJson(Map<String, dynamic> json) {
    return ArticalModel(
      title: json['title'] ,
      description: json['description'] ,
      imageUrl: json['urlToImage'] ,
    );
  }

}