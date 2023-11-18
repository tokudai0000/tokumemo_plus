import 'package:flutter/material.dart';

class AdsContact extends StatefulWidget{
  const AdsContact({super.key});
  @override
  State<AdsContact> createState()=>_AdsContact();
}
class _AdsContact extends State<AdsContact>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text('広告申請用フォーム'),
      ),
      body: Container(),
    );
  }
}