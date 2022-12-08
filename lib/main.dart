//--no-sound-null-safety
import 'package:demo1_flutter/screems/chat/chat.dart';
import 'package:demo1_flutter/screems/dashboard/dashboard.dart';
import 'package:demo1_flutter/screems/home/home.dart';
import 'package:demo1_flutter/screems/park/park_detail_1.dart';
import 'package:demo1_flutter/screems/park/park_detail_2.dart';
import 'package:demo1_flutter/screems/park/park_list.dart';
import 'package:demo1_flutter/screems/profile/profile.dart';
import 'package:demo1_flutter/screems/setting/setting.dart';
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

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int currentTab = 0;
  final List<Widget> screens = [Dashboard(), Chat(), Profile(), Setting()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ParkingDetailScreem();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.directions_railway),
              ),
              Tab(icon: Icon(Icons.directions_subway),
              ),
              Tab(icon: Icon(Icons.directions_bike),
              )
            ]),
            title: Text('TabBar View'),
          ),
          body: PageStorage(
            child: currentScreen,
            bucket: bucket,
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            // button o giua
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = ParkingDetailScreem();
                            currentTab = 0;
                          });
                        },
                        minWidth: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.dashboard,
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'Dashboard',
                              style: TextStyle(
                                  color: currentTab == 0
                                      ? Colors.blue
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = Chat();
                            currentTab = 1;
                          });
                        },
                        minWidth: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat,
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'Chat',
                              style: TextStyle(
                                  color: currentTab == 1
                                      ? Colors.blue
                                      : Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = Profile();
                            currentTab = 2;
                          });
                        },
                        minWidth: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_outline,
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                  color: currentTab == 2
                                      ? Colors.blue
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = Setting();
                            currentTab = 3;
                          });
                        },
                        minWidth: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.settings,
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'Chat',
                              style: TextStyle(
                                  color: currentTab == 3
                                      ? Colors.blue
                                      : Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        length: 3,
      ),
    );
  }
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
      home: HomePages(),
      // initialRoute: '$Start1',
      // routes: {
      //   '$Home': (_) => const Home(),
      //   '$Start1': (_) => const Start1(),
      //   '$Start2': (_) => const Start2(),
      //   '$Parklist': (_) => const Parklist(),
      // },
    );
  }
}
