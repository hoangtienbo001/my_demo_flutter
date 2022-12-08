import 'package:demo1_flutter/screems/chat/chat.dart';
import 'package:demo1_flutter/screems/profile/profile.dart';
import 'package:demo1_flutter/screems/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.person_add),
                ),
                Tab(icon: Icon(Icons.settings),
                ),
                Tab(icon: Icon(Icons.chat),
                )
              ]),
              title: Text('TabBar View'),
            ),
          body: TabBarView(children: [
            Profile(),
            Setting(),
            Chat()
          ]),  
          drawer: Drawer(
            child: SafeArea(child: Column(children: [
              ListTile(
                leading: Icon(Icons.departure_board_outlined),
                title: Text('aa'),
                onTap: () {
                  print('tab aa');
                },
              ),
              ListTile(
                leading: Icon(Icons.departure_board_outlined),
                title: Text('aa'),
                onTap: () {
                  print('tab aa');
                },
              )
            ]),)
          ),
        ),
      ),
    );
  }
}