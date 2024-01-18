import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

/// アプリケーションのメイン関数。アプリの実行がここから始まる
Future<void> main() async {
  //画面の向きなど取得
  WidgetsFlutterBinding.ensureInitialized();
  // runApp関数はFlutterアプリケーションを開始するために使われる
  // ProviderScopeは、Riverpodを使用して状態管理を行うためのウィジェット
  // これにより、アプリ内のどこからでもデータにアクセスできるようになる
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
