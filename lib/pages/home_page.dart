import 'package:flutter/material.dart';
import 'package:flutter_project/utils/extensions.dart';
import 'package:flutter_project/widgets/custom_pading.dart';
import 'package:flutter_project/widgets/list_row_tile_comic.dart';
import 'package:flutter_project/widgets/list_tile_comic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPadding(
        child: Column(
          children: [
            kToolbarHeight.pv,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/03/itsuki-nakano-2.jpg'),
                    ),
                    20.ph,
                    const Text('Usuario Pruebas'),
                  ],
                ),
                const Icon(
                  Icons.search,
                  size: 32,
                ),
              ],
            ),
            30.pv,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best selling comics',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text('See all', style: TextStyle(color: Colors.grey))
              ],
            ),
            30.pv,
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const ListTileComic(
                      image: 'assets/sp.jpeg', title: 'Spiderman'),
                  20.ph,
                  const ListTileComic(
                      image: 'assets/sp2.jpeg', title: 'Spiderman Black Heart'),
                  20.ph,
                  const ListTileComic(
                      image: 'assets/im.jpeg', title: 'IronMan'),
                ],
              ),
            ),
            15.pv,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Last Updated',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            15.pv,
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTileRowComic(
                    date: DateTime.now(),
                    image: 'assets/sp.jpeg',
                    price: 15.99,
                    rate: 4.0,
                    title: 'Spiderman',
                  ),
                  ListTileRowComic(
                    date: DateTime.now(),
                    image: 'assets/sp2.jpeg',
                    price: 12.99,
                    rate: 5.0,
                    title: 'Spiderman & Blackheart',
                  ),
                  ListTileRowComic(
                    date: DateTime.now(),
                    image: 'assets/im.jpeg',
                    price: 18.99,
                    rate: 3.0,
                    title: 'Ironman',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
