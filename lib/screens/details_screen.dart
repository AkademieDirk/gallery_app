import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(backgroundColor: Colors.red, title: Text("Titel")),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 600,
                    width: 600,
                    child: Image(image: AssetImage("assets/images/bike.jpeg"))),
                Text("Überschrift"),
                Text("Datum"),
                Text("")
              ],
            )));
  }
}
