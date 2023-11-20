import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsPage extends HookConsumerWidget {
  const NewsPage({super.key});

  static String get pageName => 'news';

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        title: Text('news_page'),
      ),
      body: Center(
        child: Text(
          'news_page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
