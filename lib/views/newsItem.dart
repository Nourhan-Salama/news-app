import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/models/articel_model.dart';

class NewsItem extends StatelessWidget {
  
final ArticelModel articel;
const NewsItem({super.key,
required this.articel});
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 200,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(articel.image??'assets/s.jpeg',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
            height: 25,
            child: Text(articel.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            ),
            ),
            SizedBox(
            height: 15,
            child: Text(articel.subTitle??'',
             style:TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.w200,
             ),
             ),
             
          )
              ],
            ),
          ),
      ],
    );
      
      
      
    
    
  }
}