import 'package:f_38_app_jam/askPageComponents/container_bottom_icons.dart';
import 'package:f_38_app_jam/askPageComponents/text_field.dart';
import 'package:f_38_app_jam/homePageComponents/app_bar.dart';
import 'package:f_38_app_jam/homePageComponents/drawer.dart';
import 'package:flutter/material.dart';

class AskPage extends StatefulWidget {
  const AskPage({super.key});

  @override
  State<AskPage> createState() => _AskPageState();
}

class _AskPageState extends State<AskPage> {
  final questionTitleController = TextEditingController();
  final questionBodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      // app bar
      appBar: const AppBarAskAcademy(),

      // drawer
      drawer: const DrawerBar(),

      // body
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 15,
              right: 15,
              bottom: 40,
            ),

            // soru sorma alanı
            child: Container(
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),

                  // Soru başlığı
                  AskTextField(
                    controller: questionTitleController,
                    minLine: 1,
                    maxLine: 2,
                  ),

                  // divider
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ),

                  // Soru içeriği
                  AskTextField(
                    controller: questionBodyController,
                    minLine: 7,
                    maxLine: 100,
                  ),

                  // buttonların olduğu satır
                  const AskPageContainerIcons(),
                ],
              ),
            ),
          ),
        ),
      ),

      // back button
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0,
        // klavye açıkken gizle
        child: FloatingActionButton(
          mini: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
