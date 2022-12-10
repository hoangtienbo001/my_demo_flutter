import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
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
      ),
    );
  }
}
