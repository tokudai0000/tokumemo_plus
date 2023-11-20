import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tokumemo_plus/features/error/pages/error_page.dart';

import '../../features/features.dart';

// アプリのルーティング(画面遷移)について "go_router"を使用
final routerProvider = Provider((ref) {
  return GoRouter(
    // アプリ起動後の初期画面を指定
    initialLocation: MainPage.pagePath,

    // アプリ内の画面（ルート）のリストを定義
    routes: [
      // メイン画面
      GoRoute(
        path: MainPage.pagePath,
        name: MainPage.pageName,
        pageBuilder: (_, state) {
          // 画面遷移のアニメーションなしで表示
          return NoTransitionPage<void>(
            child: const MainPage(),
          );
        },
      ),
    ],
    // エラー時はエラー用の画面を表示
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
  );
});
