import 'package:demo1_flutter/screems/dashboard/widgets/banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/theme.dart';

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
    final size = context.screenSize;
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
