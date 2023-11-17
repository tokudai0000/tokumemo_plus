import 'package:flutter/material.dart';
class HomeView extends StatelessWidget{
  const HomeView({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ホーム")
      ),
      body: const Center(
        child: Text("新しい規約にどういしている"),
      ),
      bottomNavigationBar:BottomNavigationBar(
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