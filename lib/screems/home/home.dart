import 'package:demo1_flutter/widgets/basic_header.dart';
import 'package:demo1_flutter/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../static/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Container(
            // height: 500,
            decoration: BoxDecoration(),
            child: BigText(text: 'Home pages'),
          ),
          //slide
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
}
