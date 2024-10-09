import 'package:flutter/material.dart';
import 'package:gallery_app/experiment.dart/puzzle_effect.dart';
import 'package:gallery_app/features/galleryview/lists/gallery_data.dart';

import 'package:gallery_app/features/galleryview/screens/home_screen.dart';

void main() {
  runApp(const HomeScreen(
    galleryData: [],

    //  galleryData: []
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [PuzzleImage(imagePath: galleryData[2].imagePath)],
            ),
          ),
        ),
      ),
    );
  }
}
