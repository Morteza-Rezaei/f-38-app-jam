import 'package:f_38_app_jam/homePageComponents/content_container.dart';
import 'package:f_38_app_jam/homePageComponents/floating_ask.button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DigerKonularMainPage extends StatefulWidget {
  const DigerKonularMainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DigerKonularMainPage> createState() => _DigerKonularMainPageState();
}

class _DigerKonularMainPageState extends State<DigerKonularMainPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = true;

  final double smallSizeMainContainerHeight = 250.0;

  final double smallSizeQuestionContainerHeight = 105;

  final double mediumSizeMainContainerHeight = 320;

  final double mediumSizeQuestionContainerHeight = 170;

  final double largeSizeMainContainerHeight = 380;

  final double largeSizeQuestionContainerHeight = 230;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
        });
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _isVisible
          ? const FloatingAskButton(askButtonColor: Colors.orange)
          : null,
      body: ListView(
        controller: _scrollController,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'Gökçe AYDIN',
              title: 'vdcode da hata alıyorum',
              question:
                  'Vscode da daha önce böyle bir hatayla karşılaşan var mı?',
              userImage: 'assets/Avatar-3.png',
              userStatus: '2022 bursiyeri',
              boxColor: Colors.blue.shade100,
              imageOfQuestion: 'assets/vscodeHatasi.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'Zehra Çekmece',
              title: 'git merge hatası',
              question:
                  'Arkadaşlar merhaba, git merge feature yazdığımda bu ekran açılıyor ne yapmam lazım yardımcı olabilir misiniz?',
              userImage: 'assets/Avatar-8.png',
              userStatus: '2022 bursiyeri',
              boxColor: Colors.orange.shade100,
              imageOfQuestion: 'assets/img_20230108_120812.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
