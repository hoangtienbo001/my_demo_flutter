import 'package:demo1_flutter/screems/park/park_detail_2.dart';
import 'package:demo1_flutter/static/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/big_text.dart';

class ParkDetail1 extends StatefulWidget {
  const ParkDetail1({super.key});

  @override
  State<ParkDetail1> createState() => _ParkDetail1State();
}

class _ParkDetail1State extends State<ParkDetail1> {
  String text = 'Text';

  // Widget handle render slide
  Widget _buildPageItem(int index) {
    return Container(
      height: 250,
      margin: EdgeInsets.only(right: 5, left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: index.isEven ? AppColors.mainColor : AppColors.textColor,
        // image: DecorationImage(image: AssetImage('assets/image/anh2.png'))
      ),
    );
  }

  void _awaitReturnValueFromSecondScreen(BuildContext context) async {
    // start the SecondScreen and wait for it to finish with a result
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkingDetailScreem(),
        ));

    // after the SecondScreen result comes back update the Text widget with it
    setState(() {
      text = result;
    });
    debugPrint('text :${text}');
  }

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
                  BigText(text: '$text'),
                  // slide
                  Container(
                    height: 200,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: PageView.builder(
                      itemCount: 5,
                      itemBuilder: (context, position) {
                        return _buildPageItem(position);
                      },
                    ),
                  )
                ],
              )),
            ),
            //details-infor

            //button
            Container(
              child: ElevatedButton(
                child: Text(
                  'Details',
                  // style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  _awaitReturnValueFromSecondScreen(context);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => ParkingDetailScreem(),
                  //     ));
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
