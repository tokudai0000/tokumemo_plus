import 'package:freezed_annotation/freezed_annotation.dart';

part 'univ_items.g.dart';
part 'univ_items.freezed.dart';

@freezed
class UnivItems with _$UnivItems{
  const factory UnivItems({
    required int id,
    required String clirntName,
    required String imageUrlStr,
    required String targetUrlStr,
    required String imageDescription,
  }) = _UnivItems;
  // json形式で受け取るためのコードを生成するために記述
  factory UnivItems.fromJson(Map<String, dynamic> json) => _$UnivItemsFromJson(json);
}