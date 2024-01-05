import 'package:freezed_annotation/freezed_annotation.dart';
part 'popItems.g.dart';
part 'popItems.freezed.dart';

@freezed
class PopupItems with _$PopupItems {
  // プロパティを指定
  const factory PopupItems({
    required String id,
    required String clientName,
    required String titleName,
    required String description,
  }) = _PopupItems;
  // json形式で受け取るためのコードを生成するために記述
  factory PopupItems.fromJson(Map<String, dynamic> json) =>
      _$PopupItemsFromJson(json);
}