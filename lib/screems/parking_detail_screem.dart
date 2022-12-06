import 'package:demo1_flutter/static/colors.dart';
import 'package:demo1_flutter/widgets/small_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/park.dart';
import '../network/network_request.dart';
import '../widgets/big_text.dart';

class ParkingDetailScreem extends StatefulWidget {
  const ParkingDetailScreem({super.key});

  @override
  State<ParkingDetailScreem> createState() => _ParkingDetailScreemState();
}

class _ParkingDetailScreemState extends State<ParkingDetailScreem> {
  List<Park> parkData = List.empty();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NetworkRequest.fetchParks().then((dataFromServer) {
      setState(() {
        // debugPrint('data server:$dataFromServer');
        parkData = dataFromServer;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('data :${parkData.map((e) => e.image)}');
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
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              height: 200,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildPageItem(position);
                },
              ),
            ),
          ),
          Container(
            height: 400,
            child: Column(children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: parkData.length,
                      itemBuilder: ((context, index) {
                        return Card(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(children: [
                              Text('${parkData[index].name}'),
                              Text('${parkData[index].description}'),
                              Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        alignment: Alignment(-.2, 0),
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            ('${parkData[index].image}'))),
                                  ))
                            ]),
                          ),
                        );
                      })))
            ]),
          )
        ],
      ),
    );
  }

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

  //widget handle render content
  Widget _renderInfor(String title, String localtion, bool bookmark,
      String description, String timeValid, double value) {
    return Container(
      height: 300,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  Text('ad'),
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
