import 'package:f_38_app_jam/view/ask_page.dart';
import 'package:flutter/material.dart';

class FloatingAskButton extends StatelessWidget {
  const FloatingAskButton({
    super.key,
    required this.askButtonColor,
  });
  final Color askButtonColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const AskPage()));
      },
      backgroundColor: askButtonColor,
      child: const Icon(Icons.add),
    );
  }
}
