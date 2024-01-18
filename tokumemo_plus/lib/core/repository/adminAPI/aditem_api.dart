import 'package:freezed_annotation/freezed_annotation.dart';
import 'pr_items.dart';
import 'univ_items.dart';

part 'aditem_api.g.dart';
part 'aditem_api.freezed.dart';

@freezed
class AdItems with _$AdItems {
  @JsonSerializable(explicitToJson: true)
  // プロパティを指定
  const factory AdItems({
    required List<PrItems> prItems,
    required List<UnivItems> univItems,
  }) = _Aditems;
  // json形式で受け取るためのコードを生成するために記述
  factory AdItems.fromJson(Map<String, dynamic> json) => _$AdItemsFromJson(json);
}
