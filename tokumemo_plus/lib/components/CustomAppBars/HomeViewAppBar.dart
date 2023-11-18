import 'package:flutter/material.dart';
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading:  IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
      title:const Text('ホーム'),
      elevation:0,
      actions: [
        IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
      ],
      backgroundColor: Colors.transparent,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(44);
}
