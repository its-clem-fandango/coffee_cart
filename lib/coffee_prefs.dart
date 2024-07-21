import 'package:flutter/material.dart';

/*NOTES: You can convert to Stateless or Stateful widgets but highlighting over
the classname and clicking the yellow lightbulb */
class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  void increasedStrength() {
    //void because this func doesnt return anything
    print("inc strength by 1");
  }

  void increasedSugars() {
    //void because this func doesnt return anything
    print("inc strength by 1");
  }

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

          /* NOTES: We use Expanded here with sizedbox for our Button 
          because we want it to take up the rest of the available space.
          Also cool, if you highlight a widget, you can click the lightbulb
          to the left to "wrap with widget"  */
          const Expanded(child: SizedBox()),
          FilledButton(
              /* NOTES: style: FilledButton.styleFrom is a convenience method
              built in to easily style the button instead of overriding manually */
              style: FilledButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.brown,
              ),
              /* NOTES: we dont invoke increasedStrength() because it will invoke them 
              right when the code runs. we just reference it so it knows thats 
              the function that needs to be invoked when pressed  */
              onPressed: increasedStrength,
              child: const Text("+"))
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
          const Expanded(child: SizedBox()),
          FilledButton(
              style: FilledButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.brown,
              ),
              onPressed: increasedSugars,
              child: const Text("+"))
        ]),
      ],
    );
  }
}
