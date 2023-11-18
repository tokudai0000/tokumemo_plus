import 'package:flutter/material.dart';
class PrivacyPolicyWidget extends StatelessWidget{
  final String privacyText;
  const PrivacyPolicyWidget({super.key, required this.privacyText});
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Text(privacyText),
      ),
    );
  }
}