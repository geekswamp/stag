part of '{{name.snakeCase()}}_bloc.dart';

enum {{name.pascalCase()}}Status { initial, inProgress, success, failure }

@freezed
sealed class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State({
    @Default({{name.pascalCase()}}Status.initial) {{name.pascalCase()}}Status status,
    @Default(false) bool loading,
    @Default('') String message,
    {{#use_single}}{{> return_list }}{{/use_single}}{{#use_list}}{{> return_list }}{{/use_list}},
  }) = _{{name.pascalCase()}}State;
}