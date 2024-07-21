import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /* NOTES: The SizedBox widget is used to add space between widgets. 
        It's sort of like margin but for widgets */
        Row(children: [
          const Text("Strength: "),
          const Text("3"),
          /*NOTES: To add your own image use Image.asset. To get rid of 
          white bg in the image we can use a blend widget by first adding a 
          color property to the image thats the same color as your bg, then 
          using colorBlendMode (one of many blends) */
          Image.asset(
            "assets/img/coffee_bean.png",
            width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
          const SizedBox(width: 50)
        ]),
        Row(children: [
          const Text("Sugars: "),
          const Text("3"),
          Image.asset(
            "assets/img/sugar_cube.png",
            width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
          const SizedBox(width: 50)
        ]),
      ],
    );
  }
}
