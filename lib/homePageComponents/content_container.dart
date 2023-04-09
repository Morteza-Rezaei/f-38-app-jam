import 'package:flutter/material.dart';

class ContentBox extends StatelessWidget {
  final String userName;
  final String title;
  final String question;
  final String userImage;
  final String userStatus;
  final Color boxColor;
  final String imageOfQuestion;

  const ContentBox({
    Key? key,
    required this.userName,
    required this.title,
    required this.question,
    required this.userImage,
    required this.userStatus,
    required this.boxColor,
    required this.imageOfQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: boxColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // user foto ve isim bilgileri
            Row(
              children: [
                const SizedBox(width: 20),
                // user foto
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(userImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                // user isim ve akademide statü bilgileri
                Column(
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      userStatus,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // soru başlığı
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10.0,
                  ),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),

            // soru
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      question,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // resim ekleme
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(
                child: Image.asset(
                  imageOfQuestion,
                  height: 190,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  // beğen butonu
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_rounded),
                  ),

                  // cevapla butonu
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mode_comment_rounded),
                  ),

                  Expanded(
                    child: Container(),
                  ),

                  // kaydet butonu
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_rounded),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
