import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserAgreementPage extends ConsumerWidget {
  const UserAgreementPage({super.key});

  static String get pageName => 'user_agreement';

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        title: Text('user_agreement_page'),
      ),
      body: Center(
        child: Text(
          'user_agreement_page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
