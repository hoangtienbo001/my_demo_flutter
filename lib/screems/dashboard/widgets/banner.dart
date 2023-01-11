import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {
  List listImage=List.empty();
  MyBanner( {
    Key? key,
    // this.listImage=listImage;
      required this.listImage,

  }) : super(key: key);
  // List listImage=listImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Carousel(
                dotSize: 6.0,
                dotSpacing: 15.0,
                dotPosition: DotPosition.bottomCenter,
                dotColor: Colors.white,
                dotBgColor: Colors.purple.withOpacity(0),
                images: listImage,
              ),
            )
          ],
        ),
      ),
    );
  }
}
