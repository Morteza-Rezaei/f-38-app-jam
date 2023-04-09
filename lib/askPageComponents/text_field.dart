// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AskTextField extends StatelessWidget {
  final controller;
  final minLine;
  final maxLine;

  const AskTextField({
    super.key,
    required this.controller,
    required this.minLine,
    required this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        minLines: minLine,
        maxLines: maxLine,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.green.shade300),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: 'Soru Başlığı',
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
