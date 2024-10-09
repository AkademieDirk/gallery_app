import 'package:flutter/material.dart';
import 'package:gallery_app/features/galleryview/screens/details_screen.dart';
import 'package:gallery_app/features/galleryview/screens/home_screen.dart';
import 'package:gallery_app/features/profile/screens/profile_screen.dart';

import 'features/galleryview/lists/gallery_data.dart';

void main() {
  runApp(const HomeScreen(
    galleryData: [],
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
              children: [
                Text("$galleryData[2]"),
                RootWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
