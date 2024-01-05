import 'package:freezed_annotation/freezed_annotation.dart';
part 'currentTermVersionAPI.g.dart';
part 'currentTermVersionAPI.freezed.dart';

@freezed
class CurrentTermVersion with _$CurrentTermVersion{
  // プロパティを指定
  const factory CurrentTermVersion({
    required String currentTermVersion
  })= _CurrentTermVersion;
  // json形式で受け取るためのコードを生成するために記述
  factory CurrentTermVersion.fromJson(Map<String,dynamic> json)=>_$CurrentTermVersionFromJson(json);

}