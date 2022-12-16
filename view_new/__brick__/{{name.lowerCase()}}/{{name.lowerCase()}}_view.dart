import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '{{name.lowerCase()}}_controller.dart';
import 'componentes/header_{{name.lowerCase()}}.dart';
import 'componentes/body_{{name.lowerCase()}}.dart';
import 'componentes/bottom_{{name.lowerCase()}}.dart';

class {{name.pascalCase()}}View extends GetView<{{name.pascalCase()}}Controller> {
  const {{name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Header{{name.pascalCase()}}(),
          Spacer(),
          Body{{name.pascalCase()}}(),
          Spacer(),
          Bottom{{name.pascalCase()}}(),
        ],
      ),
    );
  }
}
    // inserir a rota:
    // static const {{name.camelCase()}} = '/{{name.camelCase()}}';

    // Colocar no arquivo de rotas dentro da lista de rotas:
    // GetPage(
    //   name: Rotas.{{name.camelCase()}},
    //   page: () => {{name.pascalCase()}}View(),
    //   transition: Transition.native,
    //   binding: {{name.pascalCase()}}Binding(),
    // ),

