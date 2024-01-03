import 'package:freezed_annotation/freezed_annotation.dart';
part 'type_term_text_version.freezed.dart';
part 'type_term_text_version.g.dart';
@freezed
class TypeEncodeTermTextJson {
  String? CurrentTermsTextVersion;
  TypeEncodeTermTextJson({required this.CurrentTermsTextVersion,});
}
@freezed
class TodoId with _$TodoId {
  const factory TodoId([
    String? value,
  ]) = _TodoId;
}

class TodoIdConverter implements JsonConverter<TodoId, String> {
  const TodoIdConverter();

  @override
  TodoId fromJson(String? value) {
    return TodoId(value);
  }

  @override
  String toJson(TodoId todoId) {
    return todoId.value ?? '';
  }
}