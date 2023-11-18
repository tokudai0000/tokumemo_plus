import 'package:flutter/material.dart';
class CommonAppBar extends StatelessWidget{
  final Widget child;
  final Widget? title;
  const CommonAppBar({required this.child,this.title,Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:  IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        title:title,

    );
  }
}

