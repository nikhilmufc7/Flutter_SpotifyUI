import 'package:flutter/material.dart';
import 'package:spotify/screens/library.dart';
import 'package:spotify/screens/premium.dart';
import 'package:spotify/screens/search.dart';
import 'screens/tabsScreen.dart';
import 'screens/albumDetails.dart';


void main()=> runApp(myApp());

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Spotify',
      theme: ThemeData(
          primaryColor: Color(0xff222326),
          accentColor: Color(0xff121212),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          title: TextStyle(
          fontFamily: 'RobertoCondensed',
          fontSize: 20,
          fontWeight:FontWeight.bold,
          )
          )
      ),
      initialRoute: '/',

      routes: {
        '/': (ctx) => TabsScreen(),
        SearchTab.routeName : (ctx) => SearchTab(),
        LibraryTab.routeName: (ctx) => LibraryTab(),
        PremiumTab.routeName: (ctx) => PremiumTab(),
        AlbumDetails.routeName: (ctx) => AlbumDetails()



      },
    );


  }
}
