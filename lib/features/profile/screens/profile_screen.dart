import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text("Profile", style: TextStyle(color: Colors.white))),
      body: Center(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/bike.jpeg")),
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
              """Lorem eu quis aute magna irure velit officia sunt reprehenderit irure do qui consectetur eiusmod. 
                      Nostrud officia anim elit veniam cupidatat duis quis cupidatat deserunt duis ullamco commodo ullamco. 
                      Reprehenderit adipisicing reprehenderit aliqua sint. Et id laboris amet anim tempor culpa velit occaecat. 
                      Nostrud duis tempor dolor quis voluptate labore occaecat velit anim ad minim culpa ut officia. Incididunt i
                      ncididunt sunt laborum commodo ea voluptate non ut cupidatat.""",
              textAlign: TextAlign.justify,
            )),
      ])),
    ));
  }
}
