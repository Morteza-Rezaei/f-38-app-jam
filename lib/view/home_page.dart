import 'package:f_38_app_jam/components/drawer.dart';
import 'package:f_38_app_jam/components/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('AskAcademy'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(), // call the search delegate
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: const DrawerBar(), // call the drawer
    );
  }
}
