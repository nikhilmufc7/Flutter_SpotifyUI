import 'package:flutter/material.dart';
import '../providers/dummy_data.dart';
import '../widgets/albums.dart';
import '../models/albumData.dart';


class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {

    final deviceSize = MediaQuery.of(context).size;
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
         Container(
           width: deviceSize.width,
           margin: EdgeInsets.only(left: 10,top: 10),
           height: 250,
           child:  ListView(
//            shrinkWrap: true,
               scrollDirection: Axis.horizontal,
               children: dummyAlbums.map((itemData)=> Album(
                 itemData.id,
                 itemData.title,
                 itemData.imageUrl,

               )).toList()
           ),
         )

        ],
      ),


    );
  }
}
