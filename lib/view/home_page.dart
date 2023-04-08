import 'package:f_38_app_jam/components/app_bar.dart';
import 'package:f_38_app_jam/components/drawer.dart';
import 'package:f_38_app_jam/components/search_bar.dart';
import 'package:f_38_app_jam/view/ask_page.dart';
import 'package:f_38_app_jam/view/login_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Flutter Sayfası',
      style: optionStyle,
    ),
    Text(
      'Unity Sayfası',
      style: optionStyle,
    ),
    Text(
      'Game Art Sayfası',
      style: optionStyle,
    ),
    Text(
      'Diğer Konular Sayfası',
      style: optionStyle,
    ),
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

      // app bar
      appBar: const AppBarAskAcademy(), // call the app bar

      drawer: const DrawerBar(), // call the drawer

      // body
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      // floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AskPage()));
        },
        child: const Icon(Icons.add),
      ),

      //  bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
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
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
