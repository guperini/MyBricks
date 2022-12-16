import 'package:get/get.dart';

import '{{name.lowerCase()}}_controller.dart';

class {{name.pascalCase()}}Binding extends Bindings {

  @override
  void dependencies() {

    // DataSources ou Adapters

    // Repositories

    // Unclassified Dependencies
    {{#viewDependencies}}
    {{^isController}}{{^isUsecase}}Get.lazyPut{{#isAbstract}}<{{dependency.pascalCase()}}>{{/isAbstract}}(()=>{{dependency.pascalCase()}}{{#isAbstract}}Imp{{/isAbstract}}());{{/isUsecase}}{{/isController}}{{/viewDependencies}}

    // Usecases
    {{#viewDependencies}}{{#isUsecase}}Get.lazyPut<{{dependency.pascalCase()}}>(()=>{{dependency.pascalCase()}}Imp());{{/isUsecase}}{{/viewDependencies}}

    // Controllers
    {{#viewDependencies}}{{#isController}}Get.put({{dependency.pascalCase()}}());{{/isController}}{{/viewDependencies}}
    Get.put({{name.pascalCase()}}Controller({{#viewDependencies}}Get.find(),{{/viewDependencies}}));
  }
  
}
