import 'package:flutter/material.dart';
import 'package:gallery_app/features/galleryview/lists/gallery_data.dart';
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
            body: GridView.builder(
                itemCount: galleryData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 8,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage:
                                  AssetImage(galleryData[index].imagePath),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              galleryData[index].imageTitle,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })));
  }
}
