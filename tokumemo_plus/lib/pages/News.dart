import 'package:flutter/material.dart';
class News extends StatelessWidget{
  const News({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('news'),
      ),
      body: const SingleChildScrollView(),
    );
  }
}