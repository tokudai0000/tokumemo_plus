import 'package:hooks_riverpod/hooks_riverpod.dart';

/// コードの可読性を高めるために、PageNameとString型は同じ意味を持つ
typedef PageName = String;

/// タブタップの操作タイプ
enum TabTapOperationType {
  duplication,
}

/// タブタップの操作に関連するProviderを定義
/// このProviderは、ページ名に基づいて異なるTabTapOperationオブジェクトを返す
final tabTapOperationProviders =
Provider.family.autoDispose<TabTapOperation, PageName>((ref, _) {
  final tabTapAction = TabTapOperation();

  // Providerが破棄されるときに、tabTapActionのdisposeメソッドを呼び出すように設定
  ref.onDispose(tabTapAction.dispose);
  return tabTapAction;
});

class TabTapOperation {
  /// タブタップ操作のリスナーを保持する
  void Function(TabTapOperationType)? _listener;
  /// リスナーを追加するメソッド。TabTapOperationTypeに基づいたアクションを行う
  void addListener(void Function(TabTapOperationType) listener) {
    _listener = listener;
  }

  /// TabTapOperationTypeに基づいてリスナーを呼び出すメソッド
  void call(TabTapOperationType actionType) {
    _listener?.call(actionType);
  }

  /// インスタンスが不要になった時にリソースを解放するためのメソッド
  void dispose() {
    _listener = null;
  }
}