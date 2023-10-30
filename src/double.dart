// Doubles (Decimal numbers)
void main(List<String> args) {
  /* atribuição básica explícita do double */
  final numberFiveDouble = 5.55;
  print('numberFive -> $numberFiveDouble');

  /* quando se atribui um valor inteiro em uma declarção double, ele vira double com .0 no final */
  double numberSevenDouble = 7;
  print('numberSevenDouble -> $numberSevenDouble');

  /* Atribuindo o valor implicitamente com var, se tranformando em int */
  var numberFourDouble = 4.24;
  print('numberFourDouble -> $numberFourDouble');

  /* final é a mesma coisa que string, boolean, double, declarando assim, o valor implícito passa a ser int
  podemos também declarar a final e atribuir valor dela depois apenas uma vez */
  final numberThreeDouble = 3.33;
  print('numberThreeDouble -> $numberThreeDouble');

  /* constate assim como final, porém é complie time, deve ser atribuída uma única vez no momento da sua assinatura */
  const numberTwoDouble = 2.45;
  print('numberTwoDouble -> $numberTwoDouble');

  // MÉTODOS DO DOUBLE -------------------------------------------------------------------------------------------

  /* alguns outros métodos foram usados na explicação do tipo int */

  /* transforma o valor em inteiro */
  print(numberFiveDouble.toInt());
  /* arredonda o valor para cima */
  print((5.2).ceil());
  /* arredonda o valor para baixo */
  print((5.9).floor());
  /* trasnforma em string fazendo o fix das cadas decimais arredondando uma unidade para cima ou para baixo
  de 5 para cima, adiciona uma unidade, de 4 para baixo, tira uma unidade */
  print((5.9854).toStringAsFixed(2));
  /* retorna apenas a parte inteira do número descartando o fracional. repare que não arredonda para 6, mesmo sendo bem perto */
  print((5.9854).truncate());
}
