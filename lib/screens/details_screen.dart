import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(backgroundColor: Colors.red, title: Text("Titel")),
            body: SizedBox(
                height: 300, width: 300, child: AssetImage(assetName))));
  }
}
