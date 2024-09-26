import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class Cards extends StatelessWidget {
  final CategoryModel category;
  const Cards({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context){
          return CategoryView(
             category: category.nameCategory,
          );
        },
        ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: 12),
        child: Container(
          width: 150,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(12),
            image: DecorationImage(image:
             AssetImage(category.image),
             fit: BoxFit.fill),
        
          ),
          child: Center(
            child: Text(category.nameCategory,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              
            ),
            ),
          ),
          
        ),
      ),
    );
  }
}