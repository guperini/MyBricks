import 'package:get/get.dart';

class {{name.pascalCase()}}Controller extends GetxController {
{{#viewDependencies}}final {{dependency.pascalCase()}} {{dependency.camelCase()}};
{{/viewDependencies}}

{{name.pascalCase()}}Controller({{#viewDependencies}}this.{{dependency.camelCase()}},{{/viewDependencies}});


    // arguments

    // controllers

    // lists

    // observable variables

    // getters e setters

    // methods

    {{#methods}} {{#isFuture}}Future<{{type}}>{{/isFuture}}{{^isFuture}}{{type}}{{/isFuture}} {{method.camelCase()}}(){ 
      // TODO implement method.camelCase()
     throw UnimplementedError();
    }
    {{/methods}}
}
