// For Loops (Laços de repetição)
void main(List<String> args) {
  /* for tradicional */
  for (int i = 0; i <= 10; i++) {
    print('This is an iteration: $i');
  }

  /* for ... in para acessar cada elemento do Iterable */
  List<int> numbersToIterate = [2, 4, 6, 8, 10];
  for (final number in numbersToIterate) {
    print('Number $number multiplied by 10: ${number * 10}');
  }
}
