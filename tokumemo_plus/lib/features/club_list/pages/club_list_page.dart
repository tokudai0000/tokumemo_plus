import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClubListPage extends ConsumerWidget {
  const ClubListPage({super.key});

  static String get pageName => 'club_list';

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        title: Text('club_list_page'),
      ),
      body: Center(
        child: Text(
          'club_list_page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
