// Classes - OOP
import 'dart:math';

class Person {
  // para deixar os atributos privados usamos o _ antes do nome (e realmente funciona, naoé igual no JS kkk)
  String _name;
  String _lastName;
  int _age;
  double _height;
  double _weight;

  Person(
      {required String name,
      required String lastName,
      required int age,
      double? height,
      double? weight})
      : this._name = name,
        this._lastName = lastName,
        this._age = age,
        this._height = height ?? 0.0,
        this._weight = weight ?? 0.0;

  // getters para acessar as variáveis privadas
  String get name => this._name;
  String get lastName => this._lastName;
  int get age => this._age;
  double get height => this._height;
  double get weight => this._weight;

  // podemos criar outros gets, não só apenas das props declaradas
  String get fullName => '${this._name} ${this._lastName}';
  String get imc => (this._weight / pow((this._height), 2)).toStringAsFixed(2);

  // definindo setters, nesse caso não é necessário colocar o tipo de retorno dele, já que um setter é sempre void
  set name(String value) => this._name = value;
  set age(int value) => this._age = value;
  set height(double value) => this._height = value;
  set weight(double value) => this._weight = value;

  // toda classe herda da classe Object, que tem um método chamado toString
  @override
  String toString() {
    return 'Person informations:\n name: ${this._name}\n age: ${this._age} anos\n height: ${this._height}m\n weight: ${this._weight}kg';
  }
}

class Cellphone {
  String? number = '00000-0000';
  String? nationality = 'unknown';

  Cellphone({this.number, this.nationality});
}

class Smartphone extends Cellphone {
  OSSystem operationalSystem;
  String brand;

  Smartphone({
    OSSystem this.operationalSystem = OSSystem.ThridParty, // valor default
    String? brand,
    String number = '00000-0000',
    String nationality = 'unknown',
  })  : this.brand = brand ?? 'unknown',
        super(number: number, nationality: nationality);
}

enum OSSystem { Android, IOS, ThridParty }

abstract class Shape {
  final String varShape = 'varShape';

  // apenas a declaração do método faz com que as classes que herdem Shape, implementem este método.
  double area();
}

class Square extends Shape {
  final double length;

  Square({required this.length});

  // quando fazemos polimorfismo para sobreescrever um método, usamos sempre o @override
  @override
  double area() => this.length * this.length;
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double area() => this.width * this.height;
}

class Banana {
  /* se quisermos declarar props da classe que nao
  são atribuídas no construtor, elas devem ser nullabel "?" ou late.
  Para late lembrar de inicializar ela antes de usá-la para nao dar erro de compilação */
  int? quantidade;
  late String tipo;

  @override
  String toString() {
    print('método toString Banana $quantidade | $tipo');
    return super.toString();
  }
}

class BananaConstructorPositionalArgs {
  int quantidade;
  String? tipo;

  /* assim como argumentos de funções,
  quando elas são do tipo positional, são obrigatórias por padrão,
  e opcionais se declaradas dentro de [] seguindo a ordem das posições definidas */
  BananaConstructorPositionalArgs(this.quantidade, [String? this.tipo]);
}

class BananaConstrutorNamedArgs {
  int quantidade;
  String? tipo;

  /* o mais comum de construtores em classes é com named arguments, usando {}, por padrão dentro deles são opcionais,
  para deixá-los obrigatórios é necessário o "required" para named args, a ordem não importa já que definimos o nome junto ao valor do argumento */
  BananaConstrutorNamedArgs({required this.quantidade, String? this.tipo});
}

class BananaConstrutorInitializer {
  int quantidade;
  String? tipo;

  /* uma forma também de atribuir algum valor na hora do construtor é com o initializer */
  BananaConstrutorInitializer({
    required int quantidade,
    String? tipo,
  })  : this.quantidade = quantidade,
        this.tipo = tipo;
}

class BananaNamedConstructor {
  late int _quantidade;
  String? tipo;

  BananaNamedConstructor(_quantidade);

  /* named constructor é bem útil para já criar uma classe com propriedades x de acordo com o construtor que vc definir */
  BananaNamedConstructor.meiaDuzia({this.tipo}) : _quantidade = 6 {
    print('Banana ${tipo} de meia dúzia criada');
  }

  BananaNamedConstructor.umaDuzia({this.tipo}) {
    // para definir a prop aqui dentro do corpo do construtor, preciso definir ela como late, senão teria queser igual a atribuição do construtor meiaDuzia
    _quantidade = 12;
    print('Banana ${this.tipo} de uma dúzia criada');
  }

  int get quantidade => _quantidade;

  set quantidade(int value) => this._quantidade = value;
}

/* usando os poderes do construtor nomeado para implementar flexibilidade nas nossas classes */
abstract class ClienteModel {
  String? name;

  ClienteModel.fromMap(Map data) {
    // para rodar a asserção é necessário o comando dart --enable-asserts path_do_arquivo
    // assim temos mais controle do data que vêm
    assert(data.containsKey(
            'name') // 'Eita, vc esqueceu de passar o nome. Mensagem opicional'
        );
    // lembrando que map acessamos com ['nomeDaProp'], nao é igual ao JS que tem .nomeDaProp
    this.name = data['name'];
  }
}

class Cliente extends ClienteModel {
  // podemos usar o construtor nomeado da classe pai normalmente
  Cliente({required Map data}) : super.fromMap(data);
}

/* outra feature legal do dart e bem útil, factory constructor */
class Employee {
  final String name;

  Employee(this.name);

  factory Employee.byType(String name, EmployeeType type) {
    if (type == EmployeeType.Manager) return Manager(name);

    if (type == EmployeeType.Consultant) return Consultant(name);
    return Employee(name);
  }
}

class Manager extends Employee {
  Manager(String name) : super(name);

  void presentProject() {
    print('I am a manager at Accenture\'s project');
  }
}

class Consultant extends Employee {
  Consultant(String name) : super(name);

  void presentTechnology() {
    print('I am a consultant that uses Dart Programming Language');
  }
}

enum EmployeeType { Manager, Consultant }

/* usando métodos operadores especias de classes */

class Produto {
  double price;

  Produto({required this.price});

  // a grande sacada está aqui, poderei fazer produto + produto direto entre duas instancias
  double operator +(Produto produto) {
    return (this.price + produto.price);
  }
}
