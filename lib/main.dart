import 'package:demo1_flutter/screems/park/park_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // var myCustomObject = ParkingDetailScreem();
  // developer.log(
  //   'log me',
  //   name: 'my.app.category',
  //   error: jsonEncode(myCustomObject),
  // );
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
        home:
            // ParkingDetailScreem()
            ParkList());
  }
}
