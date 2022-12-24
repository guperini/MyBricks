
abstract class {{name.pascalCase()}}Translations {

  static String i18n(String key) => _translations[AppController.locale.languageCode]![key]!;
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

  static String get hello => i18n("hello");
}
