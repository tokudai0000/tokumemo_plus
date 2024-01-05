import 'package:freezed_annotation/freezed_annotation.dart';
part 'buttonItems.g.dart';
part 'buttonItems.freezed.dart';

@freezed
class ButtonItems with _$ButtonItems {
  // プロパティを指定
  const factory ButtonItems({
    required String id,
    required String clientName,
    required String titleName,
    required String description,
  }) = _ButtonItems;
  // json形式で受け取るためのコードを生成するために記述
  factory ButtonItems.fromJson(Map<String, dynamic> json) =>
      _$ButtonItemsFromJson(json);
}