import 'dart:math';

void main(List<String> args) {
  /* condição ternária para ser usada em casos que podem ser resolvidos em apenas uma linha */
  bool isBlue = getRandomValue().isEven ? true : false;
  String blueOrRed = isBlue ? 'blue' : 'red';

  print('is blue or red? $blueOrRed');
}

final randomInt = new Random();

// gera um inteiro aleatório de 0 a 9
int getRandomValue() {
  final randomInt = new Random();

  return randomInt.nextInt(10);
}
