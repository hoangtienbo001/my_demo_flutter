import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({
    Key? key,
  }) : super(key: key);

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
                images: [
                  Image.asset(
                    'assets/image/anh1.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/image/anh2.png',
                    fit: BoxFit.cover,
                  ),Image.asset(
                    'assets/image/anh3.jpg',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
