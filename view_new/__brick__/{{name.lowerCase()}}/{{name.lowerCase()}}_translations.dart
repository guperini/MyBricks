import 'package:get/get.dart';

abstract class {{name.pascalCase()}}Translations {

  static String i18n(String key) => _translations[Get.locale.languageCode][key];
  static const _translations = {
    "en": {
      "hello": "Hello",
    },
    "pt": {
      "hello": "Olá",
    },
    "es": {
      "hello": "Ola",
    },
  };
}
