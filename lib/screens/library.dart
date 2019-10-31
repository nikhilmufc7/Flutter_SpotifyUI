import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LibraryTab extends StatefulWidget {
  static const routeName = '/library';

  @override
  _LibraryTabState createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        flexibleSpace: SafeArea(
          child: TabBar(
            unselectedLabelColor: Colors.grey,
            dragStartBehavior: DragStartBehavior.start,
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                child: Text("Music",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900
                  ),),
              ),
              Tab(
                child: Text("Podcasts",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900
                  ),),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(
            child: Text("Music",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w900
            ),),
          ),


          // tab 2
          Container(
            child: Text("Podcasts",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900
              ),),
          )
        ],

      ),

    );
  }
}
