import 'package:demo1_flutter/screems/startScreen/start2.dart';
import 'package:demo1_flutter/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../static/colors.dart';
import '../../utils/theme.dart';

class Start1 extends StatelessWidget {
  const Start1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = context.screenSize;

    return Scaffold(
      body: Column(children: [
        // Header(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 500,
            child: BigText(text: 'start screem 1'),
          ),
        ),
        Align(
          alignment: const Alignment(0.0, 1.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('$Start2');
            },
            child: Text('NEXT'),
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
                  size.width * 0.1,
                  size.height * 0.01,
                ),
              ),
              foregroundColor: MaterialStateProperty.all(kColorDarkGrey),
              textStyle: MaterialStateProperty.all(
                PrimaryFont.medium(size.height * 0.015),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
