import 'package:flutter/material.dart';

class SongList extends StatelessWidget {
  final String title;
  final String subTitle;
  final String albumName;


  SongList(this.title, this.subTitle, this.albumName);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  subTitle + "  .  " + albumName ,

                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),
                ),
              ),

            ],
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert,color: Colors.white,),
          )
        ],

      ),
    );
  }
}
