import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articel_model.dart';

class newsServices{
  final Dio dio;
  newsServices({required this.dio});
 
 Future<List<ArticelModel> >getGeneralNews({required String category}) async{
    try {
  Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=aa814ed054b649458c0dc3089981abd8&category=$category');
  Map<String,dynamic> JsonData=response.data;
  List<dynamic> articles =JsonData['articles'];
  List<ArticelModel> articelList =[];

 

  
  for (var articel in articles) {
    ArticelModel articelModel =ArticelModel.fromJson(articel);
        articelList.add(articelModel);
  
  }
  return articelList;
}  catch (e) {
  return  [];
 
}
  }
}