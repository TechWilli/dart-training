// import 'dart:io';

import 'src/classes.dart';

void main() {
  print("Hello World, Dart!");

  Person william = Person(
      name: 'William', lastName: 'Assis', age: 23, height: 1.65, weight: 55);

  print(william.toString());

  print(william.name);
  print(william.fullName);

  william.name = 'Will';
  print(william.name);

  print('meu imc -> ${william.imc}');

  Cellphone myCellPhone = Cellphone();
  print('myCellPhone.number => ${myCellPhone.number}');
  print('myCellPhone.nationality => ${myCellPhone.nationality}');

  Cellphone myCellPhone2 =
      Cellphone(number: '96317-3441', nationality: 'Brasileiro');
  print('myCellPhone2.number => ${myCellPhone2.number}');
  print('myCellPhone2.nationality => ${myCellPhone2.nationality}');

  Smartphone mySmartphone = Smartphone();
  print('mySmartphone.number => ${mySmartphone.number}');
  print('mySmartphone.nationality => ${mySmartphone.nationality}');
  print('mySmartphone.operationalSystem => ${mySmartphone.operationalSystem}');
  print('mySmartphone.brand => ${mySmartphone.brand}');

  Smartphone mySmartphone2 = Smartphone(
      number: '12345-6789',
      nationality: 'China',
      operationalSystem: OSSystem.Android,
      brand: 'Xiaomi');

  print('mySmartphone2.number => ${mySmartphone2.number}');
  print('mySmartphone2.nationality => ${mySmartphone2.nationality}');
  print(
      'mySmartphone2.operationalSystem => ${mySmartphone2.operationalSystem}');
  print('mySmartphone2.brand => ${mySmartphone2.brand}');

  // stdout.write('Olá, qual a sua idade? ');
  // // preciso colocar o ! para dizer que realmente após ler o input, ele será uma string para poder converter
  // final number = int.parse(stdin.readLineSync()!);
  // print('Idade do usuário capturado no terminal $number');
}
