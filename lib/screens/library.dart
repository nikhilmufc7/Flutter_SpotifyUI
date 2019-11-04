import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../providers/dummy_data.dart';
import '../widgets/libraryList.dart';

class LibraryTab extends StatefulWidget {
  static const routeName = '/library';

  @override
  _LibraryTabState createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        bottomOpacity: 0.0,
        flexibleSpace: SafeArea(
          child: TabBar(
            unselectedLabelColor: Colors.white,
            dragStartBehavior: DragStartBehavior.start,
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Music",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Tab(
                child: Text(
                  "Podcasts",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(
              child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 15, right: 5, top: 10),
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        "Playlists",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: null,
                    ),
                    FlatButton(
                      child: Text(
                        "Artists",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: null,
                    ),
                    FlatButton(
                      child: Text(
                        "Albums",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
              ),
              Container(
                  height: 30,
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white30,
                        ),
                        width: 270,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              size: 24,
                              color: Colors.white,
                            ),
                            hintText: "Find in playlists",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.white),
                            alignLabelWithHint: true,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white30,
                        ),
                        child: RaisedButton(
                          child: Text(
                            "Albums",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: null,
                        ),
                      )
                    ],
                  )),
              Container(
                height: deviceSize.height,
                width: deviceSize.width,
                margin: EdgeInsets.only(left: 10),
                child: ListView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: dummyLibraryData
                        .map((itemData) => LibraryCard(
                              itemData.imageUrl,
                              itemData.title,
                              itemData.subTitle,
                            ))
                        .toList()),
              ),
            ],
          )), // tab 1 container

          // tab 2
          Container(
            child: Text(
              "Podcasts",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ],
      ),
    );
  }
}
