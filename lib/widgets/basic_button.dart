import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screems/startScreen/start2.dart';
import '../utils/theme.dart';

class BasicButton extends StatelessWidget {
  const BasicButton({
    Key? key,
    this.fixedSize,
    this.textStyle,
  }) : super(key: key);

  final MaterialStateProperty<Size>? fixedSize;
  final MaterialStateProperty<TextStyle>? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed('$Start2');
      },
      child: const Text('GET STARTED'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kColorLightGrey),
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
