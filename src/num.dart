// NUMBER (NUM)
void main(List<String> args) {
  /* o tipo num é o "pai" de int e double, sendo que podemos tribuir valores inteiros e decimais a
  uma variável declarada com o num */
  num myNumber = 5;
  print('myNumber -> $myNumber | runtimeType -> ${myNumber.runtimeType}');
  myNumber = 4.5;
  print(
      'myNumber after changing to double -> $myNumber | runtimeType -> ${myNumber.runtimeType}');

  /* este tipo num, tem as principais props e métodos em comum entre int e double, porém
  para usar uma prop mais específica, é necessário fazer type check */
  if (myNumber is int) {
    print('myNumber is int and I can access its specific methods and props');
    // myNumber.isEven e myNumber.isOdd estão disponíveis neste if
  } else {
    print('myNumber is double and I can access its specific methods and props');
    // myNumber.isEven e myNumber.isOdd NÃO estão disponíveis neste else
  }

  /* as props e métodos de int e double são explicadas em suas seções específicas */
}
