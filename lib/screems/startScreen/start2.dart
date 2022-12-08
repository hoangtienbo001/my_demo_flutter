import 'package:demo1_flutter/static/colors.dart';
import 'package:demo1_flutter/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Start2 extends StatelessWidget {
  const Start2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // height: 200,
            decoration: BoxDecoration(color: AppColors.mainColor),
            child: BigText(text: 'start creen 2'),
          ),
        ],
      ),
    );
  }
}
