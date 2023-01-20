// Estensions são poderosas para criar funcionalidades em Objetos e Classes existentes ou criados por você
// como o prório nome sugere, elas extendem capacidades para aquele objeto.
// em projetos é legal ter um arquivo separado com extensios para usar em todas a partes.

void main(List<String> args) {
  String cat = 'fulano cat ciclano doido';
  print('cat before capitalized => $cat');
  print('cat capitalized just first word => ${cat.capitalize()}');
  print(
      'cat capitalized all words => ${cat.capitalize(capitalizeEachWord: true)}');

  List<num> listAverage = [5, 5, 5, 5, 5];
  print('average => ${listAverage.average}');
}

/* Estendendo funcionalidade na classe String */
extension Capitalize on String {
  String capitalize({bool capitalizeEachWord = false}) {
    List<String> splitedStringBySpace = this.split((' '));
    List<String> splitedCapitalizedStrings;

    if (this.length < 1 || this == ' ') {
      throw Exception(
          'Para capitalizar uma string, deve-se passar um valor válido (diferente de null e diferente de "" ou " ")');
    }

    String capitalizedString = '${this[0].toUpperCase()}${this.substring(1)}';

    if (capitalizeEachWord && splitedStringBySpace.length > 1) {
      splitedCapitalizedStrings = splitedStringBySpace.map((word) {
        if (word == '') {
          return 'space';
        }
        return '${word[0].toUpperCase()}${word.substring(1)}';
      }).toList();

      splitedCapitalizedStrings = splitedCapitalizedStrings
          .where((element) => element != 'space')
          .toList();
      /* Outra opção, neste caso o remove where altera a própria variável */
      // splitedCapitalizedStrings.removeWhere((element) => element == 'space');

      return splitedCapitalizedStrings.join(' ');
    }

    return capitalizedString;
  }
}

/* Nesse caso estendendo da lista de num, int e double herdam também */
extension Average on List<num> {
  double get average {
    double sum = 0;
    for (num number in this) {
      sum += number;
    }
    return sum / this.length;
  }
}
