// Estrutura de decisão SWITCH

/* switch casa muito bem com constantes enums */
enum Languages { dart, javascript, ruby, python }

void main(List<String> args) {
/* Funciona igual no Javascript */
  const Languages language = Languages.dart;

  switch (language) {
    case Languages.dart:
      print(
        'Estou aprendendo Dart e estou gostando demais. Quero em breve ser um dev Flutter/Dart!',
      );
      break;
    case Languages.javascript:
      print(
        'Já programei muito em Javascript e hoje é a linguagem que eu mais domino : )',
      );
      break;
    case Languages.python:
      print(
        'Já programei em python no meu primeiro estágio com Análise de Dados e também na faculdade!',
      );
      break;
    default:
      print(
        'Ops, $language não é uma linguagem que eu já experimentei :( (ainda...)',
      );
  }
}
