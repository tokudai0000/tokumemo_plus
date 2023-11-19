import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/features.dart';

final routerProvider = Provider((ref) {
  return GoRouter(
    initialLocation: MainPage.pagePath,
    routes: [
      /// メイン
      GoRoute(
        path: MainPage.pagePath,
        name: MainPage.pageName,
        pageBuilder: (_, state) {
          return NoTransitionPage<void>(
            key: state.pageKey,
            child: const MainPage(),
          );
        },
      ),
    ],
    errorBuilder: (context, state) {
      return const MainPage();
    },
  );
});
