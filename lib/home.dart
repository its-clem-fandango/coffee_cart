import "package:coffee_card/coffee_prefs.dart";
import "package:flutter/material.dart";

/*NOTES: stl creates a stateless widget. Start all classes w/ capital  */

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  /* NOTES: The context object is about the environment. The Scaffold widget
  provides basic visual structure like an app bar, body, floating action buttons
  navigation drawers, bottom nav bars, and temporary pop ups */
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Coffee Cart",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      /* NOTES: Column widgets can have several children, so it provides us
        with a children argument. The items inside must be widgets. Also, in
        terms of alignment. Containers will always align to the container with
        the largest width. If you want to override this, use 
        CrossAxisAlignment.stretch it will stretch the whole width available */
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const Text("How I like my Covfefe"),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
          /* NOTES: When working in flutter if you overflow the bounds of the
          screen, unlike a webpage, you will get a yellow/black crosshatched  
          warning. You have to be within the bounds of the screen. We can use
          the expanded widget to do this. It works like flex items in css where
          grows to take up all the space it has and restricts the child widget
          to that maximum size as well*/

          /* NOTES: The expanded widget takes up all available height and 
          no more, then passes those constraints to its child. If it doesn't 
          expand horizontally, use the fit property with BoxFit. Then we use 
          alignment to start the image at the bottom and center of the image  */
          Expanded(
            child: Image.asset(
              "assets/img/coffee_bg.jpg",
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          )
        ],
      ),
    );
  }
}

/* NOTES: THE CONTAINER WIDGET - is a basic layout widget. 
Containers act as wrappers to other widgets. When we use a container we can add
margin and padding. By default, a containers width and height matches whatever a
child's width and height is. But this can be overridden by specifying a 
different width height. If it doesnt have a child it takes up all width and
height   */

/* Container(
        color: Colors.orange,
        //width: 200,
        //height: 100,

        /*NOTES: Edge Insets are how we set padding and margin. 
        You can use .only to target a specific side */
        padding: const EdgeInsets.all(20), //applies 20 padding all around
        margin:
            const EdgeInsets.fromLTRB(10, 40, 0, 0), //left, top, right, bot.
        child: const Text(
          "Hello, Covfefe Lovers",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
            decoration: TextDecoration.underline,
            fontStyle: FontStyle.italic,
          ),
        )); */