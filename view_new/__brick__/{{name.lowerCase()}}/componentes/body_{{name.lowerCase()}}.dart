import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../{{name.lowerCase()}}_controller.dart';

class Body{{name.pascalCase()}} extends GetView<{{name.pascalCase()}}Controller> {
  const Body{{name.pascalCase()}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Text('BODY'),
      ],
    );
    
  }
}