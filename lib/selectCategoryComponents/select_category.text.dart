import 'package:flutter/material.dart';

class SelectCategoryWelcomeText extends StatelessWidget {
  const SelectCategoryWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        text: 'Lüten Devam Etmek İçin\nBir Kategori Seçiniz',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          height: 1.5,
        ),
      ),
    );
  }
}
