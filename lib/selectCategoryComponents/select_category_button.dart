import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.categoryTitle,
    required this.categorycolor,
    required this.onPressed,
    required this.image,
  }) : super(key: key);

  final String? categoryTitle;
  final Color categorycolor;
  final String image;

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: categorycolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ImageIcon(AssetImage(image)),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  categoryTitle!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
