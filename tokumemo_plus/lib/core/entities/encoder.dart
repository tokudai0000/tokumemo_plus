import 'package:freezed_annotation/freezed_annotation.dart';
import 'json_types.dart';
// 生成されるdartファイルを記述
part 'encoder.freezed.dart';
part 'encoder.g.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class CurrentTermVersion with _$CurrentTermVersion{
  // プロパティを指定
  const factory CurrentTermVersion({
    required String currentTermVersion
  })= _CurrentTermVersion;
  // json形式で受け取るためのコードを生成するために記述
  factory CurrentTermVersion.fromJson(Map<String,dynamic> json)=> _$CurrentTermVersionFromJson(json);
}
@freezed
class AdItems with _$AdItems{
  // プロパティを指定
  const factory AdItems({
    required Map<String> prItems
    required Map<String> univItems

  })= _CurrentTermVersion;
  // json形式で受け取るためのコードを生成するために記述
  factory CurrentTermVersion.fromJson(Map<String,dynamic> json)=> _$CurrentTermVersionFromJson(json);
}

