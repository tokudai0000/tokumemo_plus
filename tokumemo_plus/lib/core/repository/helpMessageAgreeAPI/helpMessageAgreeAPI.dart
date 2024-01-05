// ignore: file_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'helpMessageAgreeAPI.g.dart';
part 'helpMessageAgreeAPI.freezed.dart';

@freezed
class HelpMessageAgree with _$HelpMessageAgree {
  // プロパティを指定
  const factory HelpMessageAgree({required String helpMessageAgree}) =
  _HelpMessageAgree;
  // json形式で受け取るためのコードを生成するために記述
  factory HelpMessageAgree.fromJson(Map<String, dynamic> json) =>
      _$HelpMessageAgreeFromJson(json);
}