import 'package:carousel_pro/carousel_pro.dart';
import 'package:demo1_flutter/screems/dashboard/widgets/banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List listImage = [
    Image.asset(
      'assets/image/anh1.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/image/anh2.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/image/anh3.jpg',
      fit: BoxFit.cover,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: [
      //     // MyBanner(),

      //     Padding(
      //       padding: EdgeInsets.only(top: 20),
      //       child: Container(
      //         height: 200,
      //         child: Text('adas'),
      //       ),
      //     )
      //   ],
      // ),
      body: MyBanner(listImage: listImage,),
    );
  }
}
