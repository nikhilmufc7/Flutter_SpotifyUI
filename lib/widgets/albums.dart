import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;



  Album(this.id, this.title,this.imageUrl);

//  void selectAlbum(BuildContext ctx) {
//    Navigator.of(ctx).pushNamed(CategoryDetail.routeName, arguments: {'id' : id, 'title': title,});
//  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(10),
        height: 250,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          boxShadow: [BoxShadow(color: Colors.black,
          )],
        ),
        child: Column(
          children: <Widget>[
            Image.network(imageUrl,
            height: 130,
            width: 130,
            fit: BoxFit.cover,),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
              ),
            )
          ],
        ),

      )
    );
  }
}