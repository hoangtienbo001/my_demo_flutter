import 'package:demo1_flutter/screems/parking_detail_screem.dart';
import 'package:flutter/material.dart';

import 'model/park.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ParkingDetailScreem());
  }
}
