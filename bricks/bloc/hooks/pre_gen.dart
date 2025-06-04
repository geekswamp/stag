import 'package:mason/mason.dart';

void run(HookContext context) async {
  final progress = context.logger.progress('Generating BLoC...');
  final returnType = context.vars['return_type'];

  context.vars = {
    'use_single': returnType == 'single',
    'use_list': returnType == 'list',
  }

  progress.complete();
}
