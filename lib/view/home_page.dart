import 'package:f_38_app_jam/homePageComponents/app_bar.dart';

import 'package:f_38_app_jam/view/diger_konular_main_page.dart';
import 'package:f_38_app_jam/homePageComponents/drawer.dart';
import 'package:f_38_app_jam/view/flutter_main_page.dart';
import 'package:f_38_app_jam/view/game_art_main_page.dart';
import 'package:f_38_app_jam/view/unity_main_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final int selectedIndex;
  const HomePage({super.key, required this.selectedIndex});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  static const List<Widget> _widgetOptions = <Widget>[
    FlutterMainPage(),
    UnityMainPage(),
    GameArtMainPage(),
    DigerKonularMainPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: const AppBarAskAcademy(),
      // call the app bar

      drawer: const DrawerBar(),
      // call the drawer

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedFontSize: 8,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/flutter.png')),
            label: 'Flutter',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/unity.png')),
            label: 'Unity',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/gameArt.png')),
            label: 'Game Art',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/digerKonular.png')),
            label: 'Diğer Konular',
            backgroundColor: Colors.orange,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(size: 30),
        unselectedIconTheme: const IconThemeData(size: 20),
        onTap: _onItemTapped,
      ),
    );
  }
}
