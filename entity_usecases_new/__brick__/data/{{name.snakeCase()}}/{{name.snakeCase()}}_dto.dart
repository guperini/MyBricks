import '../../domain/{{name.snakeCase()}}/{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Dto extends {{name.pascalCase()}} {

  {{name.pascalCase()}}Dto({ {{#params}} 
    {{#required}}required{{/required}} super.{{param}},{{/params}}
  });

  factory {{name.pascalCase()}}Dto.fromMap(Map<String, dynamic> json) => {{name.pascalCase()}}Dto( {{#params}}
      {{param}}:json['{{param}}'], {{/params}}
    );

  factory {{name.pascalCase()}}Dto.fromEntity({{name.pascalCase()}} entity) => {{name.pascalCase()}}Dto( {{#params}}
      {{param}}:entity.{{param}}, {{/params}}
    );

  Map<String, dynamic> toMap() => { {{#params}}
      '{{param}}':{{param}}, {{/params}}
    };

   @override
  String toString() => '{{name.pascalCase()}}({{#params}}{{param}}: ${{param}}, {{/params}})';
}

    