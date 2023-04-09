import 'package:f_38_app_jam/homePageComponents/content_container.dart';
import 'package:f_38_app_jam/homePageComponents/floating_ask.button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UnityMainPage extends StatefulWidget {
  const UnityMainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<UnityMainPage> createState() => _UnityMainPageState();
}

class _UnityMainPageState extends State<UnityMainPage> {
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
      backgroundColor: Colors.grey[100],
      floatingActionButton: _isVisible
          ? const FloatingAskButton(askButtonColor: Colors.red)
          : null,
      body: ListView(
        controller: _scrollController,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'Emirhan Çelik',
              title: 'Unity hatası',
              question:
                  'sorunu nasıl düzeltebilirim. Bir tutorial dosyası indirdim fakat hiç bir script çalışmıyor',
              userImage: 'assets/Avatar-4.png',
              userStatus: '2022 bursiyeri',
              boxColor: Colors.green.shade100,
              imageOfQuestion: 'assets/unity-1.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'Bengü Kaya',
              title: 'Ekranları Urpye dönüştürme',
              question:
                  'Arkadaşlar merhaba, bilgisayara format atıldı ve dosyalar silindi. Şimdi derse devam etmek istiyorum fakat URPye donusturemiyorum ekrandakileri. Yardımcı olabilir misiniz?',
              userImage: 'assets/Avatar-5.png',
              userStatus: '2022 bursiyeri',
              boxColor: Colors.teal.shade100,
              imageOfQuestion: 'assets/img_20230328_230815.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'Ahemet Çelik',
              title: 'Unity hatası',
              question:
                  'Oyunu başlatınca karakter böyle havada kalıyo. manuel olarak kaydıramıyorum colliderları. nasıl çözebilirim bu sorunu?',
              userImage: 'assets/Avatar-11.png',
              userStatus: '2022 bursiyeri',
              boxColor: Colors.yellow.shade100,
              imageOfQuestion: 'assets/image-2.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ContentBox(
              userName: 'Hazal Kaya',
              title: 'Unity hatası',
              question:
                  'merhaba projemde hdrp ye geçtikten sonra materials ı hdrp ye uyarlasam da bütün objelerim bu şekilde bembeyaz gözüküyor ve ışıklarım çalışmıyor sizce neden olabilir?',
              userImage: 'assets/Avatar-10.png',
              userStatus: '2022 bursiyeri',
              boxColor: Colors.purple.shade100,
              imageOfQuestion: 'assets/unity_sorun.png',
            ),
          ),
        ],
      ),
    );
  }
}
