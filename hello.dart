// import 'dart:io';

import 'src/classes.dart';

void main() {
  print("Hello World, Dart!");

  // instância de classes são opcionais ter o new "Class", por conveção não usam no new
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

  Square quadrado = Square(length: 50);
  print(quadrado.varShape); // prop vinda da classe abstrata
  print(quadrado.area()); // prop vinda da classe abstrata

  Banana myBanana = Banana();
  myBanana.quantidade = 12;
  myBanana.tipo = 'verde';
  print('Banana quantidade -> ${myBanana.quantidade}');
  print('Banana tipo -> ${myBanana.tipo}');
  // invoca o método toString;
  print(myBanana);

  BananaConstructorPositionalArgs myBananaConstructorPositionalArgs =
      BananaConstructorPositionalArgs(12);
  print(
      'BananaConstructorPositionalArgs quantidade -> ${myBananaConstructorPositionalArgs.quantidade}');
  print(
      'BananaConstructorPositionalArgs tipo -> ${myBananaConstructorPositionalArgs.tipo}');

  BananaConstrutorNamedArgs myBananaConstrutorNamedArgs =
      BananaConstrutorNamedArgs(quantidade: 6);
  print(
      'BananaConstrutorNamedArgs quantidade -> ${myBananaConstrutorNamedArgs.quantidade}');
  print(
      'BananaConstrutorNamedArgs tipo -> ${myBananaConstrutorNamedArgs.tipo}');

  BananaConstrutorInitializer myBananaConstrutorInitializer =
      BananaConstrutorInitializer(quantidade: 10, tipo: 'marrom');
  print(
      'BananaConstrutorInitializer quantidade -> ${myBananaConstrutorInitializer.quantidade}');
  print(
      'BananaConstrutorInitializer tipo -> ${myBananaConstrutorInitializer.tipo}');

  BananaNamedConstructor myBananaNamedConstructor =
      BananaNamedConstructor.meiaDuzia(tipo: 'amarela');
  print(
      'BananaNamedConstructor quantidade -> ${myBananaNamedConstructor.quantidade}');
  BananaNamedConstructor myBananaNamedConstructor2 =
      BananaNamedConstructor.umaDuzia(tipo: 'verde');
  print(
      'BananaNamedConstructor quantidade -> ${myBananaNamedConstructor2.quantidade}');

  Cliente myCliente = Cliente(data: {'a': 'William Assis'});

  print('myCliente ${myCliente.name}');

  final myManager = Employee.byType('William', EmployeeType.Manager) as Manager;
  Employee myConsultant =
      Employee.byType('William', EmployeeType.Consultant) as Consultant;

  /* como o construtor de Employee faz a instancia ser um Employee,
  para usar os metodos das classes da factory uma das opções o cast com "as" no momento da instanciação
  ou chamando os métodos */
  myManager.presentProject();
  // como criei o consultant com o tipo Employee, precisa do cast aqui
  (myConsultant as Consultant).presentTechnology();

  Produto produtoTv = Produto(price: 1000);
  Produto produtoSofa = Produto(price: 2000);

  print(
      'soma dos preços produtos direto da instancia ${produtoTv + produtoSofa}');
  print('soma dos preços produtos ${produtoTv.price + produtoSofa.price}');

  // stdout.write('Olá, qual a sua idade? ');
  // // preciso colocar o ! para dizer que realmente após ler o input, ele será uma string para poder converter
  // final number = int.parse(stdin.readLineSync()!);
  // print('Idade do usuário capturado no terminal $number');
}
