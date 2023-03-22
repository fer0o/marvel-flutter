import 'package:flutter/material.dart';
import 'package:flutter_project/pages/comic_detail.dart';
import 'package:flutter_project/utils/extensions.dart';

class ListTileComic extends StatelessWidget {
  const ListTileComic({super.key, required this.image, required this.title});

  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const ComicDetail())) ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(image))),
            5.pv,
             Text(title.toUpperCase(), style:const TextStyle(fontWeight: FontWeight.bold) ,)
        ],
      ),
    );
  }
}