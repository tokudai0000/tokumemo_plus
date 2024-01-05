// ignore: file_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'pop_items.dart';
import 'button_items.dart';

part 'home_event_info_api.g.dart';
part 'home_event_info_api.freezed.dart';

@freezed
class HomeEventInfo with _$HomeEventInfo {
  // プロパティを指定
  const factory HomeEventInfo({
    required PopupItems popupItems,
    required ButtonItems buttonItems,
  }) = _HomeEventInfo;
  // json形式で受け取るためのコードを生成するために記述
  factory HomeEventInfo.fromJson(Map<String, dynamic> json) => _$HomeEventInfoFromJson(json);
}