import 'package:flutter/material.dart';

// TabNavigatorクラス: このクラスは、タブ間のナビゲーションを管理するためのStatelessWidgetです。
class TabNavigator extends StatelessWidget {
  // コンストラクタ: 必要なパラメータを受け取ります。
  // navigatorKey: このナビゲータの状態を制御するためのキー。
  // page: 表示するウィジェット。｀
  const TabNavigator({
    super.key,
    required this.navigatorKey,
    required this.page,
  });

  final GlobalKey<NavigatorState> navigatorKey;
  final Widget page;

  // root: ナビゲーションのルートパスを定義します。
  static const String root = '/';

  // _routeBuilders: ナビゲーションのルートとウィジェットをマッピングする関数。
  // BuildContextを受け取り、ルートの名前に応じたウィジェットを返します。
  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      root: (context) => page,
    };
  }

  // buildメソッド: UIを構築します。
  @override
  Widget build(BuildContext context) {
    // routeBuilders: 現在のコンテキストに基づいてルートビルダーを取得します。
    final routeBuilders = _routeBuilders(context);

    // Navigatorウィジェットを返します。
    // key: Navigatorの状態を管理するためのキー。
    // initialRoute: 初期ルートとしてrootを設定します。
    // onGenerateRoute: ルート設定時に呼ばれる関数。ルートの名前に基づいて対応するページを生成します。
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