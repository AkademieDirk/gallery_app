// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:gallery_app/experiment.dart/puzzle_effect.dart';
import 'package:gallery_app/features/galleryview/lists/gallery_data.dart';

import 'package:gallery_app/features/galleryview/screens/home_screen.dart';
import 'package:gallery_app/features/galleryview/screens/home_screen_listview.dart';
import 'package:gallery_app/widgets/gallery_item.dart';

void main() {
  runApp(HomescreenListView(
    galleryData: galleryData,
    //galleryData: [], authorData: [],

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
