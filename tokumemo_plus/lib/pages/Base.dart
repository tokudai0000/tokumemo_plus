import 'package:flutter/material.dart';
class Base extends StatefulWidget{
  const Base({Key? key}) : super(key: key);
  @override
  State<Base> createState()=>_Base();
}
class _Base extends State<Base>{
  int _selectedIndex=0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ホーム")
      ),
      body: const Center(
        child: Text("新しい規約に同意している"),
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.construction_rounded),
              label: 'Book',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: 'Book',
          ),
        ],
      )
    );
  }
}