import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  static const routeName = '/search';

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool isScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Search",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      )),
                  background: Container(
                    decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [
                          Theme
                              .of(context)
                              .primaryColor,
                          Theme
                              .of(context)
                              .accentColor,
                        ],
                        begin: FractionalOffset.topLeft,
                        end: FractionalOffset.bottomRight,
                      ),
                    ),
                  )),

            ),

          ];
        },
        body: Container(
          child: Text('search'),
        ),
      ),
    );
  }
}