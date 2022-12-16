import 'package:dartz/dartz.dart';

import '{{name.lowerCase()}}.dart';
import '{{name.lowerCase()}}_repository.dart';

abstract class {{{usecases.usecaseName.pascalCase()}}}UseCase {
   Future<Either<{{{usecases.left.pascalCase()}}},{{#usecases.rightIsList}}List<{{{usecases.right}}}>>> call();{{/usecases.rightIsList}}{{^usecases.rightIsList}}{{{usecases.right}}}>> call();{{/usecases.rightIsList}}
}

class {{{usecases.usecaseName.pascalCase()}}}UseCaseImp implements {{{usecases.usecaseName.pascalCase()}}}UseCase {
  final {{name.pascalCase()}}Repository {{name.camelCase()}}Repository; 
  {{{usecases.usecaseName.pascalCase()}}}UseCaseImp(this.{{name.camelCase()}}Repository);

  @override{{#usecases.rightIsList}}
  Future<Either<{{{usecases.left.pascalCase()}}}, List<{{name.pascalCase()}}>>> call() async {
    return {{name.camelCase()}}Repository.{{{usecases.usecaseName.camelCase()}}}();
  }{{/usecases.rightIsList}}{{^usecases.rightIsList}}
  Future<Either<{{{usecases.left.pascalCase()}}}, {{usecases.right}}>> call() async {
    return {{name.camelCase()}}Repository.{{{usecases.usecaseName.camelCase()}}}();
  }{{/usecases.rightIsList}}
}

// BINDING:
//     Get.lazyPut<{{usecases.usecaseName.pascalCase()}}UseCase>(
//      () => {{usecases.usecaseName.pascalCase()}}UseCaseImp(Get.find()));
