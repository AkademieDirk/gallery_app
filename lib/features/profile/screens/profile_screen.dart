import 'package:flutter/material.dart';
import 'package:gallery_app/features/galleryview/screens/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required List galleryData});

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
                    backgroundImage: AssetImage("assets/images/kaya.jpeg")),
              ),
              SizedBox(height: 25),
              Text(
                "Kaya Müller",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Fotograf",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  // hier wird später die Variable aus der Liste eingesetzt
                  child: Text(
                    "eine Leidenschaft und mein Können zu zeigen und eine Verbindung zwischen dem Betrachter und dem Bild herzustellen."
                    "Mein Name ist Kaya Müller, ein Fotograf im Alter von 32 Jahren, der die Welt durch die Linse entdeckt. Mit einem Hintergrund in der visuellen Kunst und jahrelanger Erfahrung in der Fotografie habe ich einen Blick für die Schönheit im Alltäglichen entwickelt. Meine Spezialität liegt in der Sport- und Naturfotografie, wo ich das Spiel von Licht und Schatten einfange, um emotionale und aussagekräftige Bilder zu schaffen.\n\nIch glaube daran, dass jeder Moment einzigartig ist und seine eigene Geschichte erzählt. In meinen Arbeiten strebe ich danach, diese Geschichten visuell zu interpretieren und sie durch kreative Kompositionen und Nuancen zum Leben zu erwecken. Meine fotografische Reise hat mich durch verschiedene Länder geführt, wo ich die Vielfalt der Kulturen und Landschaften festhalte, immer auf der Suche nach neuen Perspektiven und Herausforderungen.\n\nMein Anspruch ist es, mit meinen Bildern nicht nur zu dokumentieren, sondern auch zu inspirieren und zu berühren. Jeder Auftrag und jedes Projekt ist für mich eine Möglichkeit, m",
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
                                builder: (context) =>
                                    HomeScreen(galleryData: [])));
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
                                builder: (context) =>
                                    HomeScreen(galleryData: [])));
                      },
                      child: Icon(Icons.door_back_door_sharp)),
                  label: "Back"),
            ]),
      ),
    );
  }
}
