import 'package:f_38_app_jam/homePageComponents/app_bar.dart';
import 'package:f_38_app_jam/homePageComponents/drawer.dart';
import 'package:f_38_app_jam/selectCategoryComponents/select_category.text.dart';
import 'package:f_38_app_jam/selectCategoryComponents/select_category_button.dart';
import 'package:f_38_app_jam/view/ask_page.dart';
import 'package:f_38_app_jam/view/home_page.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      // app barı çağır
      appBar: const AppBarAskAcademy(),

      // drawerı çağır
      drawer: const DrawerBar(),

      // body kısmı
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // akademi-1 resmini çağır
              Image.asset(
                'assets/akademi-1.png',
                height: 226,
              ),

              const SizedBox(height: 18),

              // select category yazısını çağır
              const SelectCategoryWelcomeText(),

              // devider
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.1,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // flutter kategorisini çağır
              CategoryWidget(
                image: 'assets/flutter.png',
                categoryTitle: 'Flutter',
                categorycolor: Colors.blue,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const HomePage(selectedIndex: 0)));
                },
              ),

              // unity kategorisini çağır
              CategoryWidget(
                image: 'assets/unity.png',
                categoryTitle: 'Unity',
                categorycolor: Colors.red,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const HomePage(selectedIndex: 1)));
                },
              ),

              // game art kategorisini çağır
              CategoryWidget(
                image: 'assets/gameArt.png',
                categoryTitle: 'Game Art',
                categorycolor: Colors.green,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const HomePage(selectedIndex: 2)));
                },
              ),

              // diğer konular kategorisini çağır
              CategoryWidget(
                image: 'assets/digerKonular.png',
                categoryTitle: 'Diğer Konular',
                categorycolor: Colors.orange,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const HomePage(selectedIndex: 3)));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
