import 'package:freezed_annotation/freezed_annotation.dart';
part 'numberOfUsersAPI.g.dart';
part 'numberOfUsersAPI.freezed.dart';

@freezed
class NumberOfUsers with _$NumberOfUsers {
  // プロパティを指定
  const factory NumberOfUsers({required String numberOfUsers}) = _NumberOfUsers;
  // json形式で受け取るためのコードを生成するために記述
  factory NumberOfUsers.fromJson(Map<String, dynamic> json) =>
      _$NumberOfUsersFromJson(json);
}