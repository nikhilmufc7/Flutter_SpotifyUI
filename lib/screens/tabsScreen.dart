import 'package:flutter/material.dart';
import 'package:spotify/screens/home.dart';
import 'package:spotify/screens/library.dart';
import 'package:spotify/screens/premium.dart';
import 'package:spotify/screens/search.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _pages = [
      {
        'page': HomeTab(),
      },
      {
        'page': SearchTab(),
      },
      {
        'page': LibraryTab(),
      },
      {
        'page': PremiumTab(),
      }
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Theme.of(context).primaryColor,
//        elevation: 0,
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.settings),
//            onPressed: () => debugPrint("settings pressed"),
//            iconSize: 25,
//            padding: EdgeInsets.only(right: 20),
//          ),
//        ],
//      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.library_music),
            title: Text("Library"),
          ),
        ],
      ),
    );
  }
}
