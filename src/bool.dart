// Booleans
void main(List<String> args) {
  /* para valores booleanos, usamos em sutuações de condições */

  bool amIalive = true;
  var amIdead = false;
  final amIgood = true;
  const amIevil = false;

  print('valor booleano $amIevil | runtimeType ${amIevil.runtimeType}');
  print(
      'valor booleano convetido para string ${amIalive.toString()} | runtimeType ${amIalive.toString().runtimeType}');

  if (amIgood) {
    print('eu sou uma boa pessoa :)');
  }

  if (!amIdead) {
    print('NÃO estou morto!');
  }

  bool isMyNameLengthSeven = 'william'.length == 7 ? true : false;

  print('isMyNameLengthSeven -> $isMyNameLengthSeven');
}
