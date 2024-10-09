import 'package:flutter/material.dart';

class PuzzleImage extends StatelessWidget {
  const PuzzleImage({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Erstes Teil
              ClipRect(
                  child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 0.5,
                      heightFactor: 0.5,
                      child: Image(
                        image: AssetImage(imagePath),
                        width: 150,
                        height: 100,
                      ))),
              // Zweites Teil
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRect(
                  child: Align(
                    alignment: Alignment.topRight,
                    widthFactor: 0.5,
                    heightFactor: 0.5,
                    child: Image(
                      image: AssetImage(imagePath),
                      width: 150,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Drittes Teil
              ClipRect(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  child: Image(
                    image: AssetImage(imagePath),
                    width: 150,
                    height: 100,
                  ),
                ),
              ),
              // Viertes Teil
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRect(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    widthFactor: 0.5,
                    heightFactor: 0.5,
                    child: Image(
                      image: AssetImage(imagePath),
                      width: 150,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
