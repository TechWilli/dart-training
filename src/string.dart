// Strings
import 'extensios.dart';

void main(List<String> args) {
  String name = 'William';
  print('name -> $name');
  /* podemos atribuir novos valores para a string, contanto que seja do mesmo tipo */
  name = 'Apple';
  print('name after reassigned with another string -> $name');

  /* ao tentar atribuir um outro tipo de valor, a mensagem de erro é:
  A value of type 'int' can't be assigned to a variable of type 'String'.
  Try changing the type of the variable, or casting the right-hand type to 'String' */
  // name = 20;

  /* podemos declarar uma string com o assign da palavra var,
  ela entende implicitamente o valor de acordo com o que passamos, neste caso a var vira uma String */
  var otherName = 'Will';
  print('otherName -> $otherName');
  /* também podemos reatribuir normalmente. e se tentarmos um número, boolean, dá erro */
  otherName = 'Pineapple';
  print('otherName after reassigned with another string -> $otherName');

  /* Declarando com final, temos a mesma mudança implícita da var, mas neste caso, final não pode mudar seu valor */
  final anotherName = 'Michael';
  print('anotherName -> $anotherName');

  /* como característica de final, podemos definí-la apenas uma única vez, e isso pode ser depois de declará-la */
  final oneMoreName;
  print('... códigos entre declaração e atribuição.');
  print('...');
  print('...');
  oneMoreName = 'Jiraya';
  print('oneMoreName -> $oneMoreName');

  /* ao tentar atribuir um outro tipo de valor, a mensagem de erro é: 
  The final variable 'anotherName' can only be set once.
  Try making 'anotherName' non-final. */
  // anotherName = 'Jackson';

  /* Mesmo esquema aqui, se tentar reatribuir para outro tipo, ou até mesmo string, const não deixa */
  const myPet = 'Guinea Pig';

  print('My pet is $myPet');

  /* é útil saber que podemos concatenar strings dessas formas: */
  String compoundName = name + otherName;
  print('compoundName -> $compoundName');

  String compoundNameWithSpace = name + ' ' + otherName;
  print('compoundNameWithSpace -> $compoundNameWithSpace');

  String compoundNameWithSpaceDollar =
      '$name qualquer outra string no meio $otherName';
  print('compoundNameWithSpaceDollar -> $compoundNameWithSpaceDollar');

  // MÉTODOS DA STRING -------------------------------------------------------------------------------------------
  String sentence = 'I am programming in Dart';
  /* retorna os códigos ascii */
  print(sentence.codeUnits);
  /* retorna um código hash */
  print(sentence.hashCode);
  /* diz se a string é vazia retornando um boolean */
  print(sentence.isEmpty);
  /* diz se a string NÃO é vazia retornando um boolean */
  print(sentence.isNotEmpty);
  /* retorna a largura da string */
  print(sentence.length);
  /* retorna o tipo da variável, no caso é String */
  print(sentence.runtimeType);
  /* adiciona preenchimento na string pela esquerda */
  print(sentence.padLeft(30, '*'));
  /* adiciona preenchimento na string pela direita */
  print(sentence.padRight(42, '#'));
  /* diz se a string contem o valor passado. É case sensitive (maiúsculo e minúsculo) */
  print(sentence.contains('Dart'));
  /* deixa a string em caixa alta (maiúsculo) */
  print(sentence.toUpperCase());
  /* deixa a string em caixa baixa (minúsculo) */
  print(sentence.toLowerCase());
  /* retorna o índice inicial da letra ou palavra passada */
  print(sentence.indexOf('Dart'));
  /* substitui todas as ocorrências da parte da string pelo valor passado */
  print(sentence.replaceAll('a', '@'));
  /* retorna uma substring */
  print(sentence.substring(5, 16));
  /* faz a separação da string e armazena em uma lista */
  print(sentence.split(' '));
  /* elimina os espaços do início e fim da string, temos o trimLeft e trimRight tbm */
  String spacedString = '        string value here   ';
  print(spacedString.trim());

  /* existem mais alguns métodos de string bem úteis que ainda não vi uso ou não entendi bem, a documentação é
  bem explicada e vale consultá-la sempre que preciso */

  /* Usando a extensão que criei em outro arquivo */
  String banana = 'the banana is yellow';
  print(banana.capitalize(capitalizeEachWord: true));
}
