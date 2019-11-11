import 'package:flutter/material.dart';

class LibraryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  LibraryCard(this.imageUrl, this.title, this.subTitle);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return  Container(
        padding: EdgeInsets.all(10),
        color: Colors.black,
//        height: 100,
        width: deviceSize.width,
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.white30,
              height: 70,
              width: 70,
              child: Image.network(
                imageUrl,
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    subTitle,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}
