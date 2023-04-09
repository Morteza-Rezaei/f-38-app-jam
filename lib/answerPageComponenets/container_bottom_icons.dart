import 'package:flutter/material.dart';

class AnswerPageContainerIcons extends StatefulWidget {
  const AnswerPageContainerIcons({super.key});

  @override
  State<AnswerPageContainerIcons> createState() =>
      _AnswerPageContainerIconsState();
}

class _AnswerPageContainerIconsState extends State<AnswerPageContainerIcons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // resim ekle
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.image_rounded),
          ),

          // video ekle
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_file_rounded),
          ),

          // dosya ekle
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.attach_file_rounded),
          ),

          // soruyu gönder
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send_rounded),
          ),
        ],
      ),
    );
  }
}
