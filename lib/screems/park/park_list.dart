import 'package:demo1_flutter/static/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/big_text.dart';

class ParkList extends StatefulWidget {
  const ParkList({super.key});

  @override
  State<ParkList> createState() => _ParkListState();
}

class _ParkListState extends State<ParkList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          child: Column(children: [
            // header widgit
            Container(
              height: 100,
              decoration: BoxDecoration(color: AppColors.mainColor),
            ),
            //map area
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              // padding: EdgeInsets.only(left: 20, right: 20),
              height: 250,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(15),
                // image: DecorationImage(
                //     image: AssetImage('assets/image/anh2.png'),
                //     fit: BoxFit.cover),
              ),
            ),
            //*details*
            //details-slide
            Center(
              child: Container(
                  // height: 10,
                  child: Column(
                children: [
                  BigText(text: 'Details'),
                  // slide
                  Container(
                    height: 200,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              )),
            ),
            //details-infor

            //button
          ]),
        ),
      ),
    );
  }
}
