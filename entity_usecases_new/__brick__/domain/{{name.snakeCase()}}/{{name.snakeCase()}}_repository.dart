import 'package:dartz/dartz.dart';

import '{{name.snakeCase()}}.dart';

abstract class {{name.pascalCase()}}Repository {

 {{#usecases}}
  {{#rightIsList}}Future<Either<{{left.pascalCase()}}, List<{{right}}>>> {{usecaseName.camelCase()}}();{{/rightIsList}}{{^rightIsList}}Future<Either<{{left.pascalCase()}}, {{right}}>> {{usecaseName.camelCase()}}();{{/rightIsList}}{{/usecases}}
}

// BINDING:
//     Get.lazyPut<{{name.pascalCase()}}Repository>(
//      () => {{name.pascalCase()}}RepositoryImp());
