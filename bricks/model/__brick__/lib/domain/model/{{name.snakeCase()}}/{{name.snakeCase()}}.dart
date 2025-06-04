import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}.freezed.dart';
part '{{name.snakeCase()}}.g.dart';

@Freezed(toJson: false)
sealed class {{name.pascalCase()}} with _${{name.pascalCase()}} {
  // TODO: add your own name parameters
  const factory {{name.pascalCase()}}({
    required int id,
    @JsonKey(name: 'fullName') required String name,
    required String email,
  }) = _{{name.pascalCase()}};

  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) => _${{name.pascalCase()}}FromJson(json);
}