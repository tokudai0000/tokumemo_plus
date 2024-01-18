import 'package:freezed_annotation/freezed_annotation.dart';

part 'pr_items.g.dart';
part 'pr_items.freezed.dart';

@freezed
class PrItems with _$PrItems{
  const factory PrItems({
    required int id,
    required String clientName,
    required String imageUrlStr,
    required String targetUrlStr,
    required String imageDescription,
  }) = _PrItems;
  // json形式で受け取るためのコードを生成するために記述
  factory PrItems.fromJson(Map<String, dynamic> json) =>
      _$PrItemsFromJson(json);
}