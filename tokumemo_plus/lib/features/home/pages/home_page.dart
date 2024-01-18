import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tokumemo_plus/features/features.dart';
class HomePage extends ConsumerStatefulWidget{
  const HomePage({super.key});
  static String get pageName => 'home';
  @override
  HomePageState createState()=>HomePageState();
}
class HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
