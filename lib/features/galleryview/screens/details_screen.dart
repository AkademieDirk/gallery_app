import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text("Details", style: TextStyle(color: Colors.white))),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // hier Variable aus der Imagelist verwenden ImageWidget
            SizedBox(
                height: 400,
                width: 600,
                child: Image(image: AssetImage("assets/images/bike.jpeg"))),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                //hier Variable einsetzen
                Text(
                  "Überschrift",
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
                "Datum",
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
                """Lorem eu quis aute magna irure velit officia sunt reprehenderit irure do qui consectetur eiusmod. 
                      Nostrud officia anim elit veniam cupidatat duis quis cupidatat deserunt duis ullamco commodo ullamco. 
                      Reprehenderit adipisicing reprehenderit aliqua sint. Et id laboris amet anim tempor culpa velit occaecat. 
                      Nostrud duis tempor dolor quis voluptate labore occaecat velit anim ad minim culpa ut officia. Incididunt i
                      ncididunt sunt laborum commodo ea voluptate non ut cupidatat.""",
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
                icon: Icon(Icons.grid_view), label: "Homescreen"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "rechts"),
          ]),
    ));
  }
}
