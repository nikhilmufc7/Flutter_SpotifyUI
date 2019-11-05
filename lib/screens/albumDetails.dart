import 'package:flutter/material.dart';

class AlbumDetails extends StatefulWidget {
  static const routeName = '/albumDetails';
  @override
  _AlbumDetailsState createState() => _AlbumDetailsState();
}

class _AlbumDetailsState extends State<AlbumDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }
}
