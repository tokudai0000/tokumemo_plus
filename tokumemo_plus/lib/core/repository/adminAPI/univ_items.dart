import 'package:freezed_annotation/freezed_annotation.dart';

part 'univ_items.g.dart';
part 'univ_items.freezed.dart';

@freezed
class UnivItems with _$UnivItems{
  const factory UnivItems({required String univItems}) = _UnivItems;
  // json形式で受け取るためのコードを生成するために記述
  factory UnivItems.fromJson(Map<String, dynamic> json) => _$UnivItemsFromJson(json);
}