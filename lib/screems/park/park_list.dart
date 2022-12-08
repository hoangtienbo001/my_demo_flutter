import 'package:demo1_flutter/static/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Parklist extends StatefulWidget {
  const Parklist({super.key});

  @override
  State<Parklist> createState() => _ParklistState();
}

class _ParklistState extends State<Parklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: AppColors.mainColor),
          )
        ],
      ),
    );
  }
}
