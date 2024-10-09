import 'package:flutter/material.dart';
import 'package:gallery_app/experiment.dart/puzzle_effect.dart';
import 'package:gallery_app/features/galleryview/lists/gallery_data.dart';
import 'package:gallery_app/features/galleryview/screens/details_screen.dart';
import 'package:gallery_app/widgets/gallery_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.galleryData});
  final List<GalleryItem> galleryData;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text("Gridview", style: TextStyle(color: Colors.white))),
      body: GridView.builder(
        itemCount: galleryData.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              //    color: const Color.fromARGB(255, 54, 127, 154),
              elevation: 8,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      galleryItem: galleryData[index],
                                    )));
                      },
                      child:
                          PuzzleImage(imagePath: galleryData[index].imagePath),
                      //radius: 60,
                      // backgroundImage:
                    ),
                  ),
                  //   ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        galleryData[index].imageTitle,
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
          );
        },
      ),
    ));
  }
}
