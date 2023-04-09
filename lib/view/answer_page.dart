import 'package:f_38_app_jam/answerPageComponenets/container_bottom_icons.dart';
import 'package:f_38_app_jam/answerPageComponenets/text_field.dart';
import 'package:f_38_app_jam/homePageComponents/app_bar.dart';
import 'package:f_38_app_jam/homePageComponents/drawer.dart';
import 'package:flutter/material.dart';

class AnswerPage extends StatefulWidget {
  const AnswerPage({super.key});

  @override
  State<AnswerPage> createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage> {
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
              top: 30,
              left: 15,
              right: 15,
              bottom: 40,
            ),

            // Cevap verme alanı
            child: Container(
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),

                  // Cevap içeriği
                  AnswerTextField(
                    hintText: 'Cevabınızı giriniz',
                    controller: questionBodyController,
                    minLine: 14,
                    maxLine: 100,
                  ),

                  // buttonların olduğu satır
                  const AnswerPageContainerIcons(),
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
