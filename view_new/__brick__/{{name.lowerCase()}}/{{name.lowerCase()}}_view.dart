import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '{{name.lowerCase()}}_controller.dart';

class {{name.pascalCase()}}View extends GetView<{{name.pascalCase()}}Controller> {
  const {{name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [

        ],
      ),
    );
  }
}
    // inserir a rota:
    // static const {{name.camelCase()}} = '/{{name.camelCase()}}';

    // Colocar no arquivo de rotas dentro da lista de rotas:
    // GetPage(
    //   name: Routes.{{name.camelCase()}},
    //   page: () => const {{name.pascalCase()}}View(),
    //   transition: Transition.native,
    //   binding: {{name.pascalCase()}}Binding(),
    // ),

