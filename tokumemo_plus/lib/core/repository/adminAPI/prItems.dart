import 'package:freezed_annotation/freezed_annotation.dart';

part 'prItems.g.dart';
part 'prItems.freezed.dart';

@freezed
class PrItems with _$PrItems{
  const factory PrItems({
    required String prItems
  }) = _PrItems;
  // json形式で受け取るためのコードを生成するために記述
  factory PrItems.fromJson(Map<String, dynamic> json) =>
      _$PrItemsFromJson(json);
}