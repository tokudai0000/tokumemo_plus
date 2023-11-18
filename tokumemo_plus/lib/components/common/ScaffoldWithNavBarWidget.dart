import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class ScaffoldWithNavBar extends StatelessWidget{
  final StatefulNavigationShell child;
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
        onTap: (int idx)=>_onItemTapped(idx,context),
      ),
    );
  }
  static int _calculateSelectedIndex(BuildContext context){
    final String location = GoRouterState.of(context).matchedLocation;
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/news')) {
      return 1;
    }
    if(location.startsWith('/clublist/list')){
      return 2;
    }
    if(location.startsWith('/settings')){
      return 3;
    }
    return 0;
  }
  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/home');
        break;
      case 1:
        GoRouter.of(context).go('/news');
        break;
      case 2:
        GoRouter.of(context).go('/clublist/list');
        break;
      case 3:
        GoRouter.of(context).go('/settings');
        break;
    }
  }
}