import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../{{name.lowerCase()}}_controller.dart';

class Header{{name.pascalCase()}} extends GetView<{{name.pascalCase()}}Controller> {
  const Header{{name.pascalCase()}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Text('HEADER'),
      ],
    );
    
  }
}