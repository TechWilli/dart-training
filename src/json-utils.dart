// Usando JSON no dart
import 'dart:convert';

void main(List<String> args) {
  const String jsonString = '''
{
  "nome": "William",
  "hobbies": ["desenhar", "estudar", "ler"]
}
''';

  final Map<String, dynamic> myMapFromJSON = json.decode(jsonString);

  print('jsonMap -> $jsonString');
  print('json converted to Map -> ${myMapFromJSON}');
  print('json converted to Map type -> ${myMapFromJSON.runtimeType}');

  final List<String> frutas = ["banana", "morango", "abacaxi"];
  print('frutas type before encode ${frutas.runtimeType}');

  final String frutasToJSONString = json.encode(frutas);

  print('frutas encodes to JSON $frutasToJSONString');
  print('frutas encodes to JSON type ${frutasToJSONString.runtimeType}');
}
