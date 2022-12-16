import 'package:dartz/dartz.dart';

import '../../domain/{{name.snakeCase()}}/{{name.snakeCase()}}.dart';
import '../../domain/{{name.snakeCase()}}/{{name.snakeCase()}}_repository.dart';

class {{name.pascalCase()}}RepositoryImp implements {{name.pascalCase()}}Repository {
 
  {{#usecases}}@override
  {{#rightIsList}}Future<Either<{{left.pascalCase()}}, List<{{right}}>>> {{usecaseName.camelCase()}}() {
    // TODO: implement {{usecaseName.camelCase()}}
    throw UnimplementedError();
  }{{/rightIsList}}{{^rightIsList}}Future<Either<{{left.pascalCase()}}, {{right}}>> {{usecaseName.camelCase()}}() {
    // TODO: implement {{usecaseName.camelCase()}}
    throw UnimplementedError();
  }{{/rightIsList}}
  {{/usecases}}
  }

    