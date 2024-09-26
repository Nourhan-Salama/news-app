class ArticelModel{
  final String? image;
  final String title;
  final String? subTitle;
  ArticelModel({required this.image,required this.title,required this.subTitle});

  factory ArticelModel.fromJson(Json){
    return ArticelModel(
      image: Json['urlToImage'], 
      title: Json['title'], 
      subTitle: Json['description'] );
  }
}