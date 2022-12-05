import 'package:demo1_flutter/static/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SlideHomePage extends StatelessWidget {
  const SlideHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          },
        ));
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(right: 5, left: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven ? AppColors.mainColor : AppColors.textColor,
          image: DecorationImage(image: AssetImage('asset/images/anh0.jpg'))),
    );
  }
}
