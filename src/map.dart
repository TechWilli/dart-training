// Maps (objetos com chave e valor)

void main(List<String> args) {
  String? returnZeroOrNull() => 'zero';

  Map<String, dynamic> myMap = {'zero': returnZeroOrNull, 'um': 1, 'dois': 2};

  String? zeroStringReturn = myMap['zero']();

  print(zeroStringReturn?.toUpperCase());
  print(myMap['um']);
  print(myMap['dois']);

  myMap.forEach((key, value) {
    print('key $key | value ${value is Function ? value() : value}');
  });

  Map<String, String> countries = {
    'BRA': 'Brasil',
    'USA': 'United States of America',
    'GER': 'Germany',
    'JAP': 'Japan'
  };

  /* as props keys e values retornam um Iterable, podemos converter para listas */
  final countryMapKeys = countries.keys; // Iterable<String>
  final countryMapValuesToList = countries.values.toList(); // List<String>

  print('countryMapKeys => $countryMapKeys');
  print('countryMapValuesToList => $countryMapValuesToList');

  /* para iterar sobre um map temos algumas formas:
  Usando for in com a prop .entries do mapa.
  Lembrar de colocar a tipagem MapEntry no item da iteração */
  print('for in com map:');
  for (MapEntry country in countries.entries) {
    print('${country.key} | ${country.value}');
  }

  /* podemos usar o forEach do map */
  print('forEach do map:');
  countries.forEach((key, value) {
    print('$key - $value');
  });

  /* existe o método map também, para usá-lo */
  final countriesNameLength =
      countries.map((key, value) => MapEntry(key.toLowerCase(), value.length));

  print('countriesNameLength => $countriesNameLength');

  countries.putIfAbsent('ESP', () => 'Espain');
  countries.update('JAP', (value) => value + ' modified');
  print('countries after adding new entry $countries');
}
