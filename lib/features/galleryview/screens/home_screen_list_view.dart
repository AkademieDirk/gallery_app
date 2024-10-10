import 'package:flutter/material.dart';
import 'package:gallery_app/features/galleryview/lists/gallery_data.dart';
import 'package:gallery_app/widgets/gallery_item.dart';

class HomescreenListView extends StatefulWidget {
  const HomescreenListView({
    super.key,
    required this.galleryData,
  });

  final List<GalleryItem> galleryData;

  @override
  State<HomescreenListView> createState() => _HomescreenListViewState();
}

class _HomescreenListViewState extends State<HomescreenListView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: ListView.builder(
          itemCount: galleryData.length,
          itemBuilder: (BuildContext context, int index) {
            //  final item = widget.galleryData[index];
            return ListTile(
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.9),
                          offset: Offset(5, 5),
                          blurRadius: 7,
                          spreadRadius: 5)
                    ]),
                child: Row(
                  children: [
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  widget.galleryData[index].imagePath)),
                        )),
                    SizedBox(width: 50),
                    Expanded(child: Text(widget.galleryData[index].imageTitle)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.galleryData[index].imageDate),
                    ),
                  ],
                ),
              ),
            );
          },
        )),
      ),
    );
  }
}
