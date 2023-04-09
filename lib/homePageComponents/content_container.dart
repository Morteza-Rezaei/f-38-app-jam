import 'package:f_38_app_jam/view/answer_page.dart';
import 'package:flutter/material.dart';

class ContentBox extends StatefulWidget {
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
  State<ContentBox> createState() => _ContentBoxState();
}

class _ContentBoxState extends State<ContentBox> {
  bool isLiked = false;
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: widget.boxColor,
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
                      image: AssetImage(widget.userImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                // user isim ve akademide statü bilgileri
                Column(
                  children: [
                    Text(
                      widget.userName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      widget.userStatus,
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
                    widget.title,
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
                      widget.question,
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
                  widget.imageOfQuestion,
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
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    icon: Icon(
                      Icons.favorite_rounded,
                      color: isLiked ? Colors.red : Colors.grey,
                    ),
                  ),

                  // cevapla butonu
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnswerPage()));
                    },
                    icon: const Icon(
                      Icons.mode_comment_rounded,
                      color: Colors.grey,
                    ),
                  ),

                  Expanded(
                    child: Container(),
                  ),

                  // kaydet butonu
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isSaved = !isSaved;
                      });
                    },
                    icon: Icon(
                      Icons.bookmark_rounded,
                      color: isSaved ? Colors.blue : Colors.grey,
                    ),
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
