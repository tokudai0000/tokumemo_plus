// ignore: file_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'popItems.dart';
import 'buttonItems.dart';
part 'homeEventInfoAPI.g.dart';
part 'homeEventInfoAPI.freezed.dart';

@freezed
class HomeEventInfo with _$HomeEventInfo {
  // プロパティを指定
  const factory HomeEventInfo({
    required PopupItems popupItems,
    required ButtonItems buttonItems,
  }) = _HomeEventInfo;
  // json形式で受け取るためのコードを生成するために記述
  factory HomeEventInfo.fromJson(Map<String, dynamic> json) =>
      _$HomeEventInfoFromJson(json);
}