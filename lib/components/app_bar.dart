import 'package:f_38_app_jam/components/search_bar.dart';
import 'package:flutter/material.dart';

class AppBarAskAcademy extends StatelessWidget implements PreferredSizeWidget {
  const AppBarAskAcademy({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('AskAcademy'),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: MySearchDelegate(), // call the search delegate
            );
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
