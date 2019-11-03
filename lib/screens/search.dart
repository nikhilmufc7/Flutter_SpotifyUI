import 'package:flutter/material.dart';
import '../widgets/searchTile.dart';
import '../providers/dummy_data.dart';

class SearchTab extends StatefulWidget {
  static const routeName = '/search';

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final double itemHeight = 110;
  final double itemWidth = 180;


  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 80),
            height: 50,
            width: deviceSize.width,
            child: Text(
              "Search",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 36),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Artists, songs or podcasts",
                hintStyle: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                alignLabelWithHint: true,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,top: 10),
            child: Text(
              "Your top genres",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10,right: 10),
            child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (itemWidth / itemHeight),
                shrinkWrap: true,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: dummySearchTile
                    .map((itemData) => SearchTile(
                          itemData.color,
                          itemData.imageUrl,
                          itemData.title,
                        ))
                    .toList()),
          ),



          Container(
            margin: EdgeInsets.only(left: 20,top: 10),
            child: Text(
              "Browse All",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10,right: 10),
            child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (itemWidth / itemHeight),
                shrinkWrap: true,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: dummySearchAllTile
                    .map((itemData) => SearchTile(
                  itemData.color,
                  itemData.imageUrl,
                  itemData.title,
                ))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
