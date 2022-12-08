import 'package:demo1_flutter/screems/startScreen/start2.dart';
import 'package:demo1_flutter/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/theme.dart';

class Start1 extends StatelessWidget {
  const Start1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = context.screenSize;

    return Scaffold(
      body: Column(children: [
        Container(
          child: BigText(text: 'start screem 1'),
        ),
        Align(
          alignment: const Alignment(0.0, 0.8),
          child: GetStartedButton(
            fixedSize: MaterialStateProperty.all(
              Size(
                size.width * 0.9,
                size.height * 0.065,
              ),
            ),
            textStyle: MaterialStateProperty.all(
              PrimaryFont.medium(size.height * 0.015),
            ),
          ),
        )
      ]),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
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
