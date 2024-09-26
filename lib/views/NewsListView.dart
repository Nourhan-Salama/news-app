import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articel_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/views/newsItem.dart';

class Newslistview extends StatelessWidget{
 final List <ArticelModel> articels;
  Newslistview({super.key, required this.articels});




  
  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate:SliverChildBuilderDelegate(
      childCount: articels.length,
        (context,index)
        {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: NewsItem(articel:articels [index]),
          );
        }
      ),


     
        );
      
  }
}