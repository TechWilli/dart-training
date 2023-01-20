// Classes - OOP
import 'dart:math';

class Person {
  String _name;
  String _lastName;
  int _age;
  double _height;
  double _weight;

  String get name => this._name;
  String get lastName => this._lastName;
  int get age => this._age;
  double get height => this._height;
  double get weight => this._weight;

  String get fullName => '${this._name} ${this._lastName}';
  String get imc => (this._weight / pow((this._height), 2)).toStringAsFixed(2);

  set name(String value) => this._name = value;
  set age(int value) => this._age = value;
  set height(double value) => this._height = value;
  set weight(double value) => this._weight = value;

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

  Smartphone(
      {this.operationalSystem = OSSystem.ThridParty,
      this.brand = 'unknown',
      String number = '00000-0000',
      String nationality = 'unknown'})
      : super(number: number, nationality: nationality);
}

enum OSSystem { Android, IOS, ThridParty }

abstract class Shape {
  final String varShape = 'varShape';
  double area();
}

class Square extends Shape {
  final double length;

  Square(this.length);

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
