import 'package:flutter/material.dart';


class SearchData with ChangeNotifier{
  final Color color;
  final String imageUrl;
  final String title;

  SearchData({
    @required this.color,
    @required this.imageUrl,
    @required this.title
  });

}