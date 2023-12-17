import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static String get pageName => 'home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        title: Text('home_page'),
      ),
      body: Center(
        child: Text(
          'home_page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
