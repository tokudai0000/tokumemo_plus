import 'package:freezed_annotation/freezed_annotation.dart';

part 'termTextAPI.g.dart';
part 'termTextAPI.freezed.dart';

@freezed
class TermText with _$TermText {
  // プロパティを指定
  const factory TermText({required String termText}) = _TermText;
  // json形式で受け取るためのコードを生成するために記述
  factory TermText.fromJson(Map<String, dynamic> json) => _$TermTextFromJson(json);
}