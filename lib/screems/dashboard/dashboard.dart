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
  @override
  Widget build(BuildContext context) {
    final size = context.screenSize;
    return Scaffold(
      body: Column(
        children: [
          Container(height: 200, child: MyBanner()),
          // Container(
          //   height: 200,
          //   margin: EdgeInsets.only(top: 20),
          //   child: GridView.count(
          //       crossAxisCount: 4,
          //       children: List.generate(8, (index) {
          //         return Center(
          //           child: Container(
          //             height: 50,
          //             width: 50,
          //             // child: Text('adad'),
          //             color: AppColors.mainColor,
          //           ),
          //         );
          //       })),
          // ),
          Container(
            child: Row(children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     height: 70,
              //     width: 70,
              //     child: ElevatedButton(
              //       onPressed: () {
              //         Navigator.of(context).pushNamed('$Start2');
              //       },
              //       child: Text('Next to continue'),
              //       style: ButtonStyle(
              //         backgroundColor:
              //             MaterialStateProperty.all(AppColors.mainColor),
              //         shape: MaterialStateProperty.all(
              //           RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(38),
              //           ),
              //         ),
              //         elevation: MaterialStateProperty.all(0),
              //         fixedSize: MaterialStateProperty.all(
              //           Size(
              //             size.width * 0.5,
              //             size.height * 0.01,
              //           ),
              //         ),
              //         foregroundColor:
              //             MaterialStateProperty.all(kColorDarkGrey),
              //         textStyle: MaterialStateProperty.all(
              //           PrimaryFont.medium(size.height * 0.015),
              //         ),
              //       ),
              //     ),
              //     decoration: BoxDecoration(
              //         color: AppColors.mainColor,
              //         borderRadius: BorderRadius.circular(15)),
              //   ),
              // )
            ]),
          )
        ],
      ),
    );
  }
}
