
import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  final Function()? onTap;

  const LogInButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
          color: Colors.blue.shade900,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            'Giriş Yap',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
