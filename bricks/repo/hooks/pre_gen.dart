import 'package:mason/mason.dart';

void run(HookContext context) async {
  final progress = context.logger.progress('Generating use case...');
  final repoType = context.vars['repo_type'];
  final returnType = context.vars['return_type'];

  context.vars = {
    'use_remote': repoType == 'remote',
    'use_local': repoType == 'local',
    'use_single': returnType == 'single',
    'use_list': returnType == 'list',
    'use_none': returnType == 'none',
  }

  progress.complete();
}
