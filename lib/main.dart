//--no-sound-null-safety
import 'package:demo1_flutter/screems/home/home.dart';
import 'package:demo1_flutter/screems/park/park_detail_1.dart';
import 'package:demo1_flutter/screems/park/park_list.dart';
import 'package:flutter/material.dart';

import 'screems/startScreen/start1.dart';
import 'screems/startScreen/start2.dart';

void main() {
  // DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: ((context) => const MyApp()),
  // );
  runApp(const MyApp());
  // var myCustomObject = ParkingDetailScreem();
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
      home: ParkDetail1(),
      initialRoute: '$Start1',
      routes: {
        // '$GetStartedPage': (_) => const GetStartedPage(),
        // '$ChooseTopicPage': (_) => const ChooseTopicPage(),
        // '$RemindersPage': (_) => const RemindersPage(),
        '$Home': (_) => const Home(),
        '$Start1': (_) => const Start1(),
        '$Start2': (_) => const Start2(),
        '$Parklist': (_) => const Parklist(),
      },
    );
  }
}
