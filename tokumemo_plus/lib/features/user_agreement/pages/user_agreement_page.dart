import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UserAgreementPage extends ConsumerWidget {
  const UserAgreementPage({super.key});

  static String get pageName => 'user_agreement';
  static String get pagePath => '/$pageName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: WebViewWidget(
        controller: WebViewController()
          ..loadRequest(Uri.parse("https://tokumemo.notion.site/81a6f545f13b409c8b6298ad5e03e992")),
      ),
    );
  }
}
