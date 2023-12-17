import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewsPage extends ConsumerWidget {
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
