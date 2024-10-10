import 'package:flutter/material.dart';
import 'package:gallery_app/features/galleryview/lists/gallery_data.dart';
import 'package:gallery_app/features/galleryview/screens/home_screen_list_view.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green[900]),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      HomescreenListView(galleryData: galleryData)));
        },
        child: Icon(Icons.list, color: Colors.black));
  }
}
