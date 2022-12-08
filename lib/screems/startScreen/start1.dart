import 'package:demo1_flutter/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/theme.dart';
import '../../widgets/basic_button.dart';

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
          child: BasicButton(
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
