import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  static const routeName = '/search';

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {


    return Container(
      child: Center(
        child: Text("Search Screen"),
      ),
    );
  }
}
