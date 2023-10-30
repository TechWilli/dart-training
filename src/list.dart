/* Lists (Arrays, lista de valores) */
void main(List<String> args) {
  /* explicitamente declaramos lista com List<Type> */
  List<String> friends = ['Maria', 'Murilo', 'Nicolas', 'Melissa'];
  print("My friends list: $friends");
  print('I have an amount of ${friends.length} friends');

  /* declarando com final, ele infere o valor List<String> */
  final fruits = ['banana', 'laranja', 'morango'];
  print('My fruits $fruits');

  /* desta forma também funciona */
  final foods = <String>['frango', 'arroz', 'feijão'];
  foods.add('cenoura');
  print('My Foods $foods');

  foods.addAll(['pizza', 'chocolate', 'hamburger']);
  print('Foods after adding junky ones $foods');

  foods.removeWhere(((element) =>
      !['cenoura', 'frango', 'arroz', 'feijão'].contains(element)));
  print('Only healthy foods $foods');

  Map<int, String> foodsMap = foods.asMap();
  print(foodsMap);
}
