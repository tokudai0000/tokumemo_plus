import 'package:freezed_annotation/freezed_annotation.dart';
import 'prItems.dart';
import 'univItems.dart';

part 'aditemAPI.g.dart';
part 'aditemAPI.freezed.dart';

@freezed
class AdItems with _$AdItems {
  // プロパティを指定
  const factory AdItems({
    required PrItems prItems,
    required UnivItems univItems,
  }) = _Aditems;
  // json形式で受け取るためのコードを生成するために記述
  factory AdItems.fromJson(Map<String, dynamic> json) => _$AdItemsFromJson(json);
}
