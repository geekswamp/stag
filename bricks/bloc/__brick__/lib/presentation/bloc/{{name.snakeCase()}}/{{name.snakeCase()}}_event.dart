part of '{{name.snakeCase()}}_bloc.dart';

@freezed
sealed class {{name.pascalCase()}}Event with _${{name.pascalCase()}}Event {
  // TODO: add your own event
  const factory {{name.pascalCase()}}Event.fetch() = {{name.pascalCase()}}Fetch;
}