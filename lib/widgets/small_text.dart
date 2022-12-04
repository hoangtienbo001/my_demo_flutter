import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// tao widget de su dung lai nhieu lan
class SmallText extends StatelessWidget {
  // khai bao 
  final Color? color;
  final String text;
  double size;
  // TextOverflow overFlow;
  double height;
  SmallText({
    Key?key,
    this.color=const Color(0xFFccc7c5), 
    required this.text,
    this.size=12,
    // this.overFlow=TextOverflow.ellipsis
    this.height=1.2
    });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow: overFlow,
      maxLines: 1,
      style: TextStyle(
        color: color,
        // fontWeight: FontWeight.w400,
        fontSize: size,
        // fontFamily: 'Roboto'
        height: height
      ),
    );
  }
}