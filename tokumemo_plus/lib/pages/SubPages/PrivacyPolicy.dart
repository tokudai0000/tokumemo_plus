import 'package:flutter/material.dart';
import 'package:tokumemo_plus/components/TermPermissionWidgets.dart';
class PrivacyPolycyPage extends StatelessWidget{
  const PrivacyPolycyPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('利用規約'),
      ),
      body: const PrivacyPolicyWidget(privacyText: '')
    );
  }
}