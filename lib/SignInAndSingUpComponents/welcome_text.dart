
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
          text: 'Oyun ve Uygulama Akademisi\n',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: 'AskAcademy\n',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Uygulamasına Hoşgeldiniz\n',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                height: 1.5,
              ),
            )
          ]),
    );
  }
}
