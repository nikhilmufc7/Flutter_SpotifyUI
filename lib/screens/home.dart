import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: IconButton(
                  icon: Icon(Icons.settings),
                  color: Colors.white,
                  onPressed: (){},

                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text("Recently Played",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 22
            ),),
          ),
          ListView(
            children: <Widget>[

            ],
          )

        ],
      ),


    );
  }
}
