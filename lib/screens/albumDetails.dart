import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../providers/dummy_data.dart';
import '../widgets/albums.dart';
import '../widgets/songList.dart';

class AlbumDetails extends StatefulWidget {
  static const routeName = '/albumDetails';

  @override
  _AlbumDetailsState createState() => _AlbumDetailsState();
}

class _AlbumDetailsState extends State<AlbumDetails> {
  String title;
  String imageUrl;

  bool isSwitched = true;

  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;

      title = routeArgs['title'];
      imageUrl = routeArgs['imageUrl'];

      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      color: Colors.black,
      width: deviceSize.width,
      height: deviceSize.height,
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          Container(
            height: 200,
            width: 100,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Image.network(imageUrl),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: RaisedButton(
                    color: Colors.black54,
                    onPressed: () {},
                    child: Text(
                      "FOLLOWING",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 14),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.green, width: 3)),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "MADE FOR NIKHIL SINGH",
                  style: TextStyle(
                      fontSize: 12,
                      wordSpacing: 2,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
               height: 50,
                  width: 180,

                  margin: EdgeInsets.only(top: 10, bottom: 5),
                  child: RaisedButton(
                    color: Color.fromRGBO(30, 217, 67, 0.7),
                    onPressed: () {},
                    child: Text(
                      "SHUFFLE PLAY",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 14),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                       ),
                  )),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Text("Download",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.white
                ),),
              ),

             Container(
               padding: EdgeInsets.only(right: 20),
               child:  Switch(
                 inactiveThumbColor: Colors.grey,
                 inactiveTrackColor: Colors.white10,
                 value: isSwitched,
                 onChanged: (value){
                   setState(() {
                     isSwitched = value;
                   });
                 },
                 activeColor: Colors.green,
                 activeTrackColor: Colors.lightGreen,

               ),
             )
            ],
          ),



          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children:   dummySongsList
                .map((itemData) => SongList(
              itemData.title,
              itemData.subTitle,
              itemData.albumName,
            ))
                .toList()),

        ],
      ),
    ));
  }
}




