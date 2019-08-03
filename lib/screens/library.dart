import 'package:flutter/material.dart';

class LibraryTab extends StatefulWidget {
  static const routeName = '/library';

  @override
  _LibraryTabState createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("lib Screen"),
      ),
    );
  }
}
