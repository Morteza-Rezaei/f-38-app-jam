import 'package:f_38_app_jam/homePageComponents/content_container.dart';
import 'package:f_38_app_jam/homePageComponents/floating_ask.button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GameArtMainPage extends StatefulWidget {
  const GameArtMainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<GameArtMainPage> createState() => _GameArtMainPageState();
}

class _GameArtMainPageState extends State<GameArtMainPage> {
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
          ? const FloatingAskButton(askButtonColor: Colors.green)
          : null,
      body: ListView(
        controller: _scrollController,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'Kadir Mert',
              title: '3D Değerlendirme Testi',
              question:
                  '3D değerlendirme testinde cevap anahtarınızda yanlış olabilir mi ?',
              userImage: 'assets/Avatar-12.png',
              userStatus: '2022 bursiyeri',
              boxColor: Colors.cyan.shade100,
              imageOfQuestion: 'assets/image.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'İrem Ece',
              title: 'Oyun Sanatı Eğitimlerine Ulaşamıyorum',
              question:
                  'Oyun sanatı eğitimlerine ulaşamıyorum nasıl düzeltebilirim?',
              userImage: 'assets/Avatar-7.png',
              userStatus: '2022 bursiyeri',
              boxColor: Colors.pink.shade100,
              imageOfQuestion: 'assets/ekran_g__r__nt__s____77_.png',
            ),
          ),
        ],
      ),
    );
  }
}
