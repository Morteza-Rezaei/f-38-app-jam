import 'package:flutter/material.dart';

class AskPageContainerIcons extends StatefulWidget {
  const AskPageContainerIcons({super.key});

  @override
  State<AskPageContainerIcons> createState() => _AskPageContainerIconsState();
}

class _AskPageContainerIconsState extends State<AskPageContainerIcons> {
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

          // kategori seç
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.category_rounded),
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
