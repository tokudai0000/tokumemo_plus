import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:tokumemo_plus/main.dart';

// import 'presentation/pages/main/main_page.dart';
// import 'presentation/widgets/have_scroll_bar_behavior.dart';
// import 'utils/navigator_key_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'テンプレアプリ',
      // navigatorKey: ref.watch(navigatorKeyProvider),
      // scrollBehavior: const HaveScrollBarBehavior(),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
