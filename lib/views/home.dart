import 'package:flutter/material.dart';
import 'package:news_app/Components/cards.dart';
import 'package:news_app/views/NewsListView.dart';
import 'package:news_app/views/NewsListViewBuilder.dart';
import 'package:news_app/views/categoriesListView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.transparent,
         elevation: 0,
         centerTitle: true,
        title: Row(
          mainAxisSize:MainAxisSize.min ,
          children:[
             Text('News',
             style: TextStyle(
              color: Colors.black,
             ),
             ),
             Text('Cloud',
             style: TextStyle(
              color: Colors.orange,
             ),
             )
          ]
          ),
          ),
          body:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child: CategoriesListView()),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
               Newslistviewbuilder(category: 'general',),
              ],
            ),
          )
    );
           
          
    
  }
}



