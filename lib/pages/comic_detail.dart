import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/utils/extensions.dart';
import 'package:flutter_project/widgets/custom_pading.dart';
import 'package:flutter_project/widgets/show_icon.dart';

class ComicDetail extends StatelessWidget {
  const ComicDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.scaffoldBackgroundColor,
        shadowColor: Colors.white.withOpacity(0),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [const ShopIcon(), 20.ph],
      ),
      body: CustomPadding(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 180,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/sp2.jpeg'))),
              15.pv,
              const Text(
                'Spiderman',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '5',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  15.ph,
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
                ],
              ),
              30.pv,
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      style: TextStyle(color: Colors.grey),
                      text: ''' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''
                    ),
                    TextSpan(
                      text: 'See variants covers ⏩',
                      style: TextStyle(color: Colors.blue,),
                      recognizer: TapGestureRecognizer()..onTap = ()=> print('puchado')
                    )
                  ]
                ),
              ),
              30.pv,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cancel',style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),),
                  ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[600],
                      foregroundColor: Colors.white
                    ),
                    onPressed: (){
                    print('Pushed Button');
                  }, child:Row(
                    children: [
                      Text('Buy full version',style: TextStyle(fontSize: 20),),
                      Icon(Icons.shopping_bag_outlined,)
                    ],
                  ))
                ],
              )
            ]),
      ),
    );
  }
}
