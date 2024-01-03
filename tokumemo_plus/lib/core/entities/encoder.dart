import 'package:freezed_annotation/freezed_annotation.dart';
import './types_api/type_term_text_version.dart';
// 生成されるdartファイルを記述
part 'encoder.freezed.dart';
part 'encoder.g.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class CurrentTermVersion with _$CurrentTermVersion{
  // プロパティを指定
  const factory CurrentTermVersion({
    required TypeEncodeTermTextJson currentTermVersion
  })= _CurrentTermVersion;
  // json形式で受け取るためのコードを生成するために記述
  factory CurrentTermVersion.fromJson(Map<String,dynamic> json)=> _$CurrentTermVersionFromJson(json);
}
@freezed
class AdItems with _$AdItems{
  // プロパティを指定
  const factory AdItems({
    required List<TypeAdItem> prItems,
    required List<TypeAdItem> univItems
  })= _AdItems;
  // json形式で受け取るためのコードを生成するために記述
  factory AdItems.fromJson(Map<String,dynamic> json)=> _$AdItemsFromJson(json);
}
@freezed
class HelpMessageAgree with _$HelpMessageAgree{
  const factory HelpMessageAgree({
    required String helpmessageAgree
  })= _HelpMessageAgree;
  factory HelpMessageAgree.fromJson(Map<String,dynamic> json)=> _$HelpMessageAgreeFromJson(json);
}
@freezed
class HomeEventInfo with _$HomeEventInfo{
  const factory HomeEventInfo({
    required List<TypePopupItems> popupItems,
    required List<TypeButtonItems> buttomItems
  })= _HomeEventInfo;
  factory HomeEventInfo.fromJson(Map<String,dynamic> json)=> _$HomeEventInfoFromJson(json);
}
@freezed
class NumberOfUsers with _$NumberOfUsers{
  const factory NumberOfUsers({
    required String numberOfUsers
  })= _NumberOfUsers;
  factory NumberOfUsers.fromJson(Map<String,dynamic> json)=> _$NumberOfUsersFromJson(json);
}
@freezed
class TermText with _$TermText{
  const factory TermText({
    required String termText
  })= _TermText;
  factory TermText.fromJson(Map<String,dynamic> json)=> _$TermTextFromJson(json);
}

