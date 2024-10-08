import 'package:flutter/material.dart';
import 'package:gallery_app/features/galleryview/lists/author_data.dart';
import 'package:gallery_app/features/galleryview/lists/gallery_data.dart';

import 'package:gallery_app/features/galleryview/screens/home_screen.dart';
import 'package:gallery_app/features/profile/screens/profile_screen.dart';

import 'package:gallery_app/widgets/gallery_item.dart';

class DetailScreen extends StatefulWidget {
  final List<GalleryItem> galleryData;
  final int index;

  const DetailScreen({
    super.key,
    required this.galleryData,
    required this.index,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _currentIndex = 0;

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text(galleryData[widget.index].imageTitle,
              style: TextStyle(color: Colors.white))),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // hier Variable aus der Imagelist verwenden ImageWidget
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: 300,
                  width: 400,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage(
                          widget.galleryData[widget.index].imagePath),
                    ),
                  )),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                //hier Variable einsetzen
                Text(
                  widget.galleryData[widget.index].imageTitle,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Expanded(child: SizedBox())
              ],
            ),
            Row(children: [
              SizedBox(
                height: 10,
                width: 20,
              ),
              Text(
                widget.galleryData[widget.index].imageDate,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(20.0),
              // hier wird später die Variable aus der Liste eingesetzt
              child: Text(
                widget.galleryData[widget.index].imageDescription,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen(
                                    galleryData: galleryData,
                                    authorData: authorData,
                                  )));
                    },
                    child: Icon(Icons.grid_view)),
                label: "Homescreen"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.door_back_door_sharp)),
                label: "Back"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (
                            context,
                          ) =>
                                  ProfileScreen(
                                    authorItem: authorData,
                                  )));
                    },
                    child: Icon(Icons.person_2)),
                label: "Profile"),
          ]),
    ));
  }
}
