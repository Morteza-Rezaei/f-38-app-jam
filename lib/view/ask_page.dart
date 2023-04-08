import 'package:f_38_app_jam/components/app_bar.dart';
import 'package:f_38_app_jam/components/drawer.dart';
import 'package:flutter/material.dart';

class AskPage extends StatelessWidget {
  const AskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      // app bar
      appBar: const AppBarAskAcademy(),

      // drawer
      drawer: const DrawerBar(),

      // body
      body: const Center(
        child: Text('Ask Page'),
      ),
    );
  }
}
