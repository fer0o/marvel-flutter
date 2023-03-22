import 'package:flutter/material.dart';
import 'package:flutter_project/pages/comic_detail.dart';
import 'package:flutter_project/utils/extensions.dart';

class ListTileRowComic extends StatelessWidget {
  const ListTileRowComic(
      {super.key,
      required this.title,
      required this.image,
      required this.price,
      required this.date,
      required this.rate});

  final String title;
  final String image;
  final double price;
  final DateTime date;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>const ComicDetail() )),
      child: Row(
        children: [
          SizedBox(
            height: 160,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(image)),
          ),
          15.ph,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                20.pv,
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      rate.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                20.pv,
                Text(
                  'On sale $date',
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'U.S Price: \$$price',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    15.pv,
                    const Icon(
                      Icons.arrow_right_alt_sharp,
                      color: Colors.black87,
                    )
                  ],
                ),
                20.pv
              ],
            ),
          )
        ],
      ),
    );
  }
}
