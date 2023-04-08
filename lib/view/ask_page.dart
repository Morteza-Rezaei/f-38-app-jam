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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.red,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Sorunun Konusu",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: TextField(
                          cursorHeight: 400,
                          decoration: InputDecoration(
                            hintText: "Soru",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Spacer(),
                        SizedBox(
                            child: Icon(
                          Icons.photo,
                          size: 50,
                        )),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            child: IconButton(
                              icon: Icon(
                                Icons.send,
                              ),
                              iconSize: 50,
                              onPressed: () {
                                print("tıklandı");
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
