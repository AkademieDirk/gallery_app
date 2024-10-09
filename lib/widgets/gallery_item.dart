import 'package:flutter/material.dart';

class GalleryItem {
  late final String imageTitle;
  late final String imageDate;
  late final String imageDescription;
  late final String imagePath;
  late final Icon icon;

  GalleryItem({
    required this.imageTitle,
    required this.imageDate,
    required this.imageDescription,
    required this.imagePath,
    required this.icon,
  });
}
