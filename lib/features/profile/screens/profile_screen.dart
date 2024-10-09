import 'package:flutter/material.dart';

import 'package:gallery_app/features/galleryview/screens/home_screen.dart';
import 'package:gallery_app/widgets/author_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
    required this.authorItem,
  });
  final AuthorItem authorItem;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green[900],
            title: Text("Profile", style: TextStyle(color: Colors.white))),
        body: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: CircleAvatar(
                    radius: 100,
                    backgroundImage:
                        AssetImage(widget.authorItem.authorImagePath)),
              ),
              SizedBox(height: 25),
              Text(
                widget.authorItem.authorName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.authorItem.authorProfession,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  // hier wird später die Variable aus der Liste eingesetzt
                  child: Text(
                    widget.authorItem.authorDescription,
                    textAlign: TextAlign.justify,
                  )),
            ]),
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
                                      galleryData: [],
                                      authorData: [],
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
            ]),
      ),
    );
  }
}
