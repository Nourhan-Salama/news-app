import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articel_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/views/NewsListView.dart';

class Newslistviewbuilder extends StatefulWidget {
  const Newslistviewbuilder({super.key,required this.category});
  final String category;

  @override
  State<Newslistviewbuilder> createState() => _NewslistviewbuilderState();
}

class _NewslistviewbuilderState extends State<Newslistviewbuilder> {
  var future;
  @override
  void initState() {
   
    super.initState();
    future = newsServices(dio: Dio()).getGeneralNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticelModel>>(future:future,
     builder:(builder,AsyncSnapshot)
     {
      if (AsyncSnapshot.hasData) {
        return Newslistview(articels: AsyncSnapshot.data!);
        
      }
      else if(AsyncSnapshot.hasError)
      {
        return SliverToBoxAdapter(
          child: Text('Oops there is an error , Try Letter'),
       );
      }
      else{
        return SliverToBoxAdapter(
      child: Center(
       child: CircularProgressIndicator()
        )
       );
      }
     }
     );
  }
}
   
    
        
      
      
  
