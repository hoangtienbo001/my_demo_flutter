import 'package:demo1_flutter/static/colors.dart';
import 'package:demo1_flutter/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/theme.dart';
import '../home/home.dart';

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
            child: BigText(text: 'start creen 2'),
          ),
          Align(
            alignment: const Alignment(0.0, 1.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('$Home');
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
                    size.width * 0.9,
                    size.height * 0.065,
                  ),
                ),
                foregroundColor: MaterialStateProperty.all(kColorDarkGrey),
                textStyle: MaterialStateProperty.all(
                  PrimaryFont.medium(size.height * 0.015),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
