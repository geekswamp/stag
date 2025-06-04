import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part '{{name.snakeCase()}}.freezed.dart';
part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

@injectable
class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc(this._fetchUseCase) : super(const {{name.pascalCase()}}State()) {
    on<{{name.pascalCase()}}Fetch>(_onFetch);
  }

  final {{name.pascalCase()}}FetchUseCase _fetchUseCase;

  void _onFetch({{name.pascalCase()}}Fetch event, Emitter<{{name.pascalCase()}}State> emit) async {
    emit(state.copyWith(status: {{name.pascalCase()}}Status.inProgress, loading: true));
    try {
      final {{#use_single}}{{> return_list }}{{/use_single}}{{#use_list}}{{> return_list }}{{/use_list}} = _fetchUseCase(null);
      emit(state.copyWith(status: {{name.pascalCase()}}Status.success, loading: false, {{#use_single}}data: data{{/use_single}}{{#use_list}}entries: entries{{/use_list}}));
    } on FailureNetwork catch (e) {
      emit(state.copyWith(status: {{name.pascalCase()}}Status.failure, loading: false, message: e.message));
    } catch (e) {
      emit(state.copyWith(status: {{name.pascalCase()}}Status.failure, loading: false, message: '$e'));
    }
  }
}