import 'package:flutter/material.dart';

class ArtistData with ChangeNotifier{
  final String id;
  final String imageUrl;
  final String title;

  ArtistData({
    @required this.id,
    @required this.imageUrl,
    @required this.title
  });

}