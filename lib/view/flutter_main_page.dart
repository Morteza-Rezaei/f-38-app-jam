import 'package:f_38_app_jam/homePageComponents/content_container.dart';
import 'package:f_38_app_jam/homePageComponents/floating_ask.button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FlutterMainPage extends StatefulWidget {
  const FlutterMainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FlutterMainPage> createState() => _FlutterMainPageState();
}

class _FlutterMainPageState extends State<FlutterMainPage> {
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
          ? const FloatingAskButton(askButtonColor: Colors.blue)
          : null,
      body: ListView(
        controller: _scrollController,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'Ecem Zavar',
              userStatus: '2022 bursiyeri',
              userImage: 'assets/kiz-1.png',
              title: 'Flutter ',
              question:
                  "Merhaba arkadaşlar ben vscode da flutter projesi oluşturdum da emülator olarak web açılıyor. Diğer emülatorü çalıştırdığımda benim yazdıklarımı algılamıyor. Sadece telefon açılıyor. Bunun çözümünü biliyor musunuz?",
              boxColor: Colors.blue.shade100,
              imageOfQuestion: 'assets/soru-1.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'Esma Zeynep Sayılı',
              userStatus: '2022 bursiyeri',
              userImage: 'assets/Avatar-5.png',
              title: 'debug yapamıyorum',
              question:
                  "Debug yapamıyorum projeyi ilk açtığımda böyle bir hata alıyorum nasıl çözebilirim?",
              boxColor: Colors.red.shade100,
              imageOfQuestion: 'assets/debug-hatasi.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'Zeynep Betül Hoş',
              userStatus: '2022 mezunu',
              userImage: 'assets/Avatar-10.png',
              title: 'Flutter Layout Explorer',
              question:
                  "merhaba benim android studiom da hocanın derste sürekli kullandığı layout Explorer kısmı yok da benimle aynı problemi yaşayıp bulan var mı",
              boxColor: Colors.cyan.shade100,
              imageOfQuestion: 'assets/layout-explorer.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'Birkay Atam',
              userStatus: '2022 bursiyeri',
              userImage: 'assets/Avatar-6.png',
              title: 'Flutter  hatası',
              question:
                  "Merhaba yeni bilgisayara kurulum yaptım. Eğitimlere en baştan başlıyorum fakat refactor başlığında ‘introduce variable ‘ dediğimde bu hata çıkıyor. Ne yapabilirim?",
              boxColor: Colors.blue.shade100,
              imageOfQuestion: 'assets/flutter-hatasi.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
