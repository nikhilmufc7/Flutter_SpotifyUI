import 'package:flutter/material.dart';

class Artist extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;



  Artist(this.id, this.title,this.imageUrl);

//  void selectAlbum(BuildContext ctx) {
//    Navigator.of(ctx).pushNamed(CategoryDetail.routeName, arguments: {'id' : id, 'title': title,});
//  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          margin: EdgeInsets.only(left: 10,right: 10, top: 10),
          height: 200,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            boxShadow: [BoxShadow(color: Colors.black,
            )],
          ),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.network(imageUrl,
                  height: 130,
                  width: 130,
                  fit: BoxFit.cover,
                ),
              ),

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
