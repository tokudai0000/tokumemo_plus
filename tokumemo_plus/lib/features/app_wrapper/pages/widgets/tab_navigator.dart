import 'package:flutter/material.dart';

/// タブ間のナビゲーションを管理する
class TabNavigator extends StatelessWidget {
  // ナビゲータの状態を制御するためのキー
  const TabNavigator({
    super.key,
    required this.navigatorKey,
    required this.page,
  });

  final GlobalKey<NavigatorState> navigatorKey;
  final Widget page;

  /// ナビゲーションのルートパス
  static const String root = '/';

  /// ルートの名前に応じたウィジェットを返す
  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      root: (context) => page,
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);

    // key: Navigatorの状態を管理するためのキー。
    // initialRoute: 初期ルートとしてrootを設定
    // onGenerateRoute: ルート設定時に呼ばれる関数でルートの名前に基づいて対応するページを生成
    return Navigator(
      key: navigatorKey,
      initialRoute: root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute<void>(
          builder: routeBuilders[routeSettings.name]!,
        );
      },
    );
  }
}