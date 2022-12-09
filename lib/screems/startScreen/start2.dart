import 'package:demo1_flutter/main.dart';
import 'package:demo1_flutter/static/colors.dart';
import 'package:demo1_flutter/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/theme.dart';

class Start2 extends StatelessWidget {
  const Start2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = context.screenSize;

    return Scaffold(
      body: Column(
        children: [
          // Header(),
          Container(
            height: 500,
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: BigText(text: 'Just start'),
            ),
          ),
          // Align(
          //   alignment: const Alignment(0.0, 1.0),
          //   child: ElevatedButton(
          //     onPressed: () {
          //       Navigator.of(context).pushNamed('$Home');
          //     },
          //     child: Text('NEXT'),
          //     style: ButtonStyle(
          //       backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
          //       shape: MaterialStateProperty.all(
          //         RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(38),
          //         ),
          //       ),
          //       elevation: MaterialStateProperty.all(0),
          //       fixedSize: MaterialStateProperty.all(
          //         Size(
          //           size.width,
          //           size.height * 0.065,
          //         ),
          //       ),
          //       foregroundColor: MaterialStateProperty.all(kColorDarkGrey),
          //       textStyle: MaterialStateProperty.all(
          //         PrimaryFont.medium(size.height * 0.015),
          //       ),
          //     ),
          //   ),
          // ),
          Align(
            alignment: const Alignment(0.0, 1.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('$HomePages');
              },
              child: Text('Next to continue'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38),
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                fixedSize: MaterialStateProperty.all(
                  Size(
                    size.width * 0.5,
                    size.height * 0.01,
                  ),
                ),
                foregroundColor: MaterialStateProperty.all(kColorDarkGrey),
                textStyle: MaterialStateProperty.all(
                  PrimaryFont.medium(size.height * 0.015),
                ),
              ),
            ),
          ),
          Row(
            children: [
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   child: Text('BACK'),
              //   style: ButtonStyle(
              //     backgroundColor:
              //         MaterialStateProperty.all(AppColors.mainColor),
              //     shape: MaterialStateProperty.all(
              //       RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(38),
              //       ),
              //     ),
              //     elevation: MaterialStateProperty.all(0),
              //     fixedSize: MaterialStateProperty.all(
              //       Size(
              //         size.width * 0.5,
              //         size.height * 0.01,
              //       ),
              //     ),
              //     foregroundColor: MaterialStateProperty.all(kColorDarkGrey),
              //     textStyle: MaterialStateProperty.all(
              //       PrimaryFont.medium(size.height * 0.015),
              //     ),
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
