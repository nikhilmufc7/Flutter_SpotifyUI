import 'package:flutter/material.dart';

class AlbumData with ChangeNotifier{
  final String id;
  final String imageUrl;
  final String title;

  AlbumData({
    @required this.id,
    @required this.imageUrl,
    @required this.title
  });


}