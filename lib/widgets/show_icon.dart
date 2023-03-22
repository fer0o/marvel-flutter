import 'package:flutter/material.dart';

class ShopIcon extends StatelessWidget {
  const ShopIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
         Icon(Icons.shopping_bag_outlined),
        Positioned(
          bottom: 0,
          child: CircleAvatar(
            maxRadius: 5,
            backgroundColor: Colors.red,
              child: Text(
            '1',
            style: TextStyle(color: Colors.white, fontSize: 8),
          )),
        )
      ],
    );
  }
}
