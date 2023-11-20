import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});

  static String get pageName => 'setting';

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        title: Text('setting_page'),
      ),
      body: Center(
        child: Text(
          'setting_page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
