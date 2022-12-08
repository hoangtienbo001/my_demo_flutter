import 'package:demo1_flutter/static/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screems/startScreen/start2.dart';
import '../utils/theme.dart';

class BasicButton extends StatelessWidget {
  final String text;

  const BasicButton(
      {Key? key,
      this.fixedSize,
      this.textStyle,
      required this.text,
      required Null Function() onPressed})
      : super(key: key);

  final MaterialStateProperty<Size>? fixedSize;
  final MaterialStateProperty<TextStyle>? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed('$Start2');
      },
      child: Text('$text'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(38),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        fixedSize: fixedSize,
        foregroundColor: MaterialStateProperty.all(kColorDarkGrey),
        textStyle: textStyle,
      ),
    );
  }
}
