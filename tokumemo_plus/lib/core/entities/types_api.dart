import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'types_api.freezed.dart';
part 'types_api.g.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class User with _$User { // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory User({
    required int id,
    required String username,
    required String email,
    required String phone,
  }) = _User;
  // json形式で受け取るためのコードを生成するために記述
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}