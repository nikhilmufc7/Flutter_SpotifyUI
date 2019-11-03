import 'package:flutter/material.dart';
import 'dart:math' as math;

class SearchTile extends StatelessWidget {
  final Color boxColor;
  final String imageUrl;
  final String title;

  SearchTile(this.boxColor,this.imageUrl,this.title);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: boxColor,
      ),
      margin: EdgeInsets.all(10),

        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 8,top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5)
              ),
              child: ClipPath(
                clipper: ImageClipper(),
                child: Transform.rotate(
                  alignment: Alignment.topRight,
                  angle: - math.pi / 4,
                  child: Image.network(imageUrl,
                    height: 100,
                    width: 110,),
                ),
              )
            ),
           Container(
             margin: EdgeInsets.only(left: 10,top: 10),
             child:  Text(title,
               style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w900,
                   color: Colors.white
               ),),
           )
          ],
        ),
    );
  }
}



class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width * 1.75, size.height);
    path.lineTo(size.width * 0.45, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}