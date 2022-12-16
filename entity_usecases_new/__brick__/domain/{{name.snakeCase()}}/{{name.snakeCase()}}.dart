class {{name.pascalCase()}} { {{#params}}
  final {{type}}{{#nullable}}?{{/nullable}} {{param}};{{/params}}

  {{name.pascalCase()}}({
  {{#params}}{{#required}}required{{/required}} this.{{param}},{{/params}}
  });
}

    