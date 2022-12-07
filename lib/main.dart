import 'package:demo1_flutter/screems/park/park_detail_1.dart';
import 'package:demo1_flutter/screems/park/park_detail_2.dart';
import 'package:flutter/material.dart';

void main() {
  // DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: ((context) => const MyApp()),
  // );
  runApp(const MyApp());
  var myCustomObject = ParkingDetailScreem();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // useInheritedMediaQuery: true,
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            // ParkingDetailScreem()
            ParkDetail1());
  }
}
