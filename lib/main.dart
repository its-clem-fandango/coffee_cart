//to import files you dont need to specify the path because its all in lib.
//just the project name and the file unless its in a folder.
import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

/* NOTES: lib is where most of your source code for the app lives. Screens/pages/
services are common folders used by developers to oragnize their apps in lib.
android/windows folder contain platform specific files. They're used under the
hood by flutter for running or publishing our apps. We dont need to edit it or
use it. Neither do we need to edit or use the build folder. .dart and .idea we
can also ignore. The pubspec file is one of the only files you will edit. Its
where you specify dependencies and paths to static assets like images    */

/* Main and runApp are just the entrypoint to our app */
void main() {
/* NOTES: Text widgets require material ancestors  such as a scaffold 
          to function correctly. You will see this in the docs */
  runApp(const MaterialApp(
/* NOTES: Text widgets require material ancestors  such as a scaffold 
          to function correctly. You will see this in the docs */
    home: Home(),
  ));
}

/* NOTES: The sandbox widget lets us experiment with a widget without 
destroying the home screen. Just change MyWidget to Sandbox  */

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sandbox"),
          backgroundColor: Colors.grey,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              color: Colors.amber,
              child: const Text("one"),
            ),
            Container(
              height: 200,
              color: Colors.green,
              child: const Text("two"),
            ),
            Container(
              height: 300,
              color: Colors.purple,
              child: const Text("three"),
            ),
          ],
        ));
  }
}
