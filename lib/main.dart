import 'package:flutter/material.dart';
import 'package:gallery_app/features/galleryview/screens/details_screen.dart';

import 'features/profile/screens/profile_screen.dart';

void main() {
  runApp(const ProfileScreen());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Center(child: Text('Hello World!')),
        ),
      ),
    );
  }
}
