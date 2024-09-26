import 'package:flutter/material.dart';
import 'package:news_app/Components/cards.dart';
import 'package:news_app/models/category_model.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  
  final List <CategoryModel> categories= const[
    CategoryModel(image: 'assets/science.avif',
     nameCategory: 'Science'),
    CategoryModel(image:'assets/s.jpeg',
      nameCategory: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg',
       nameCategory: 'Technology'),
    CategoryModel(image:'assets/b.jpeg',
     nameCategory: 'Business'),
     CategoryModel(image: 'assets/e.jpeg',
      nameCategory: 'Entertaiment'),
      CategoryModel(image:'assets/g.jpeg',
       nameCategory: 'General'),
       CategoryModel(image: 'assets/health.avif',
        nameCategory: 'Health')
 
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Cards(category:categories [index]);
        },
        ),
    );
  }
}