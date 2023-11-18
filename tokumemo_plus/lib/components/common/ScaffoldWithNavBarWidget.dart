import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class ScaffoldWithNavBar extends StatelessWidget{
  final Widget child;
  const ScaffoldWithNavBar({required this.child,Key? key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:child,
      bottomNavigationBar: BottomNavigationBar(
          items:const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ホーム',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label:'ニュース',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_baseball),
                label:'クラブリスト',
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.settings),
                label:'設定',
            ),
        ],
        currentIndex: _calculateSelectedIndex(context),
      ),
    );
  }
  static int _calculateSelectedIndex(BuildContext context){
    final String location = GoRouterState.of(context).location;
  }
}