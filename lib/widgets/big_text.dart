import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// tao widget de su dung lai nhieu lan
class BigText extends StatelessWidget {
  // khai bao 
  final Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText({
    Key?key,
    this.color=const Color(0xFF332d2b), 
    required this.text,
    this.size=20,
    this.overFlow=TextOverflow.ellipsis
    });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size
        // fontFamily: 'Roboto'
      ),
    );
  }
}