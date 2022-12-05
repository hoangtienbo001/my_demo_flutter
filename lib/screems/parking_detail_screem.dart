import 'package:demo1_flutter/static/colors.dart';
import 'package:demo1_flutter/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/big_text.dart';

class ParkingDetailScreem extends StatefulWidget {
  const ParkingDetailScreem({super.key});

  @override
  State<ParkingDetailScreem> createState() => _ParkingDetailScreemState();
}

class _ParkingDetailScreemState extends State<ParkingDetailScreem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // main content
        children: [
          // title
          Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Icon(Icons.arrow_left),
                  BigText(
                    text: 'Narsinqdi',
                    color: AppColors.textColor,
                  ),
                ],
              )),
          // slide
          Container(
            height: 180,
            // decoration: BoxDecoration(
            //     color: AppColors.mainColor,
            //     borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: PageView.builder(
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              },
            ),
          ),
          // render item
          Container(
            child: _renderInfor('Parking Lot of San Manolia',
                '97-HangTien-HaNoi', true, 'hello', '11h', 200),
          )
        ],
      ),
    );
  }

  // Widget handle render slide
  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(right: 5, left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: index.isEven ? AppColors.mainColor : AppColors.textColor,
        // image: DecorationImage(image: AssetImage('asset/images/anh0.jpg'))
      ),
    );
  }

  //widget handle render content
  Widget _renderInfor(String title, String localtion, bool bookmark,
      String description, String timeValid, double value) {
    return Container(
      height: 500,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  BigText(
                    size: 18,
                    text: title,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SmallText(
                      text: localtion,
                    ),
                  )
                ]),
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(30))),
              ],
            ),
          ),
          //infor area
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: SmallText(
                      text: 'ha noi',
                      color: AppColors.inconColor,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: SmallText(
                      text: 'ha noi',
                      color: AppColors.inconColor,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: SmallText(
                      text: 'ha noi',
                      color: AppColors.inconColor,
                    )),
                  ),
                )
              ],
            ),
          ),
          //description area
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(children: [
                BigText(text: 'Description'),
                Text('qweqwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwqweqwewww' +
                    'asdasddddddddddddddddwwwwwwwwwwwwwwwawwwww')
              ]),
            ),
          )
        ],
      ),
    );
  }
}
