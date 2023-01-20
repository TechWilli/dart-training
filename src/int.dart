// Integers
void main(List<String> args) {
  /* atribuição básica explícita do inteiro */
  int numberFive = 5;
  print('numberFive -> $numberFive');

  /* Atribuindo o valor implicitamente com var, se tranformando em int */
  var numberFour = 4;
  print('numberFour -> $numberFour');

  /* final é a mesma coisa que string, boolean, double, declarando assim, o valor implícito passa a ser int
  podemos também declarar a final e atribuir valor dela depois apenas uma vez */
  final numberThree = 3;
  print('numberThree -> $numberThree');

  /* constate assim como final, porém é complie time, deve ser atribuída uma única vez no momento da sua assinatura */
  const numberTwo = 2;
  print('numberTwo -> $numberTwo');

  // MÉTODOS DO INTEGER (INT) -------------------------------------------------------------------------------------------

  /* já existem props imbutidas para dizer se o inteiro é ímpar ou par, isso ajuda muito.
  even - par | odd - ímpar */
  print('numberFive.isEven -> ${numberFive.isEven}');
  print('numberFive.isOdd -> ${numberFive.isOdd}');
  print('numberFour.isEven -> ${numberFour.isEven}');
  print('numberFour.isOdd -> ${numberFour.isOdd}');
  /* retorna se o valor da variável é NaN */
  print('numberFive.isNaN -> ${numberFive.isNaN}');
  /* retorna se o valor é negativo ou não */
  print('numberFive.isNegative -> ${numberFive.isNegative}');
  int negativeFive = -5;
  print('negativeFive.isNegative -> ${negativeFive.isNegative}');
  /* retorna 0 se o valor é zero, 1 se maior que zero, -1 se menor que zero */
  print('numberFive.sign -> ${numberFive.sign}');
  /* retorna se o valor é finito */
  print(numberFive.isFinite);
  /* coloca o valor em um range especificado.
  neste caso coloquei um range de 0 a 10, mas pode ser qualquer um, ex.: -10 e 15  */
  print(
      'numberFive.clamp -> ${numberFive.clamp(0, 10)}'); // está no range, retorna o valor em si
  print(
      'negativeFive.clamp -> ${negativeFive.clamp(0, 10)}'); // abaixo do range, retorna o menor limite especificado
  print(
      'numberFour.clamp -> ${numberFour.clamp(5, 10)}'); // acima do range, retorna o maior limite especificado
  /* retorna o valor absoluto */
  print('negativeFive.abs -> ${negativeFive.abs()}');
  /* transforma o valor em double */
  print(numberFive.toDouble());
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
