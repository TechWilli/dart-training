// Functions

void main(List<String> args) {
  sayHelloToSomeone('William');

  final fiveInteger = retrieveNumberToInt(5.9);
  print('fiveInteger -> $fiveInteger');

  final fiveDouble = retrieveNumberToDouble(5);
  print('fiveDouble -> $fiveDouble');

  final myWavyName = transformToWavyString('morango com pimenta', 'up');
  print('myWavyName $myWavyName');

  final multiplicationResult =
      multiply(5, multiplier: 5, resultIntOrDouble: 'a');
  print('multiplicationResult -> $multiplicationResult');

  varFunc();
  varFuncFatArrow();

  final String sentenceReturned = displayNameInSentence(
      name: 'William',
      printSentence: (nameToPrint) =>
          'This name was displayed through a callback function => $nameToPrint');
  print(sentenceReturned);
}

/* para definir uma função devemos entender sua estrutura:

  [tipo de retorno] [assinatura - nome da função]([parâmetros...]) {
    [corpo da função]
  }

  as funções são definidas normalmente fora do bloco de execução main,
  mantendo assim uma maior organização

  seguindo o modelo de estrutura citado anteriormente, temos como exemplo:
*/

void sayHelloToSomeone(String name) {
  print('Hello, $name!');
}

/* Funções com retornos diferentes de void podem ser atribuídas à variáveis afim de armazenar seus valores */

int retrieveNumberToInt(double number) {
  return number.toInt();
}

double retrieveNumberToDouble(int number) {
  return number.toDouble();
}

/* esta é uma função com parâmetro opcional, dentro do [],
  por ser opcional precisa ter o operador null-safety (?)
  ou poderia também ter um valor padrão
*/
String transformToWavyString(String value, [String? startType]) {
  startType = startType ?? 'up';

  String wavyStringValue = '';

  String firstLetterUpOrDown(String letter, int index) {
    if (startType == 'up') {
      return index.isEven ? letter.toUpperCase() : letter;
    } else if (startType == 'down') {
      return index.isOdd ? letter.toUpperCase() : letter;
    }

    return letter;
  }

  for (int i = 0; i < value.length; i++) {
    wavyStringValue += firstLetterUpOrDown(value[i], i);
  }

  return wavyStringValue;
}

/* já esta função tem parâmetros nomeados, por padrão eles são opcionais também, para deixá-los obrigatórios
 é necessário o required antes do ta tipagem */
num multiply(num number,
    {required int multiplier, String resultIntOrDouble = 'int'}) {
  if (resultIntOrDouble == 'int') {
    return (number * multiplier).toInt();
  } else if (resultIntOrDouble == 'double') {
    return (number * multiplier).toDouble();
  }

  return number;
}

/* Fazendo relação com javascript, podemos atribuir a criação da
função a uma variavel, com ou sem notação de fat arrow.
Neste caso, como atribuímos a criação da função a uma variável, precisamos do ; no final */
void Function() varFuncFatArrow =
    () => print('Var Func Fat Arrow assigned to a variable');

void Function() varFunc = () {
  print('Var Func assigned to a variable');
};

typedef SumOfIntNumbers = int Function(int, int);

SumOfIntNumbers somOfIntNumbers = (int num1, int num2) {
  return num1 + num2;
};

typedef PrintSentence = String Function(String);

String displayNameInSentence(
    {required String name, required PrintSentence printSentence}) {
  return printSentence(name);
}
