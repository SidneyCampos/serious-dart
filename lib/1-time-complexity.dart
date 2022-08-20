List<String> names = ["Maria", "José", "Pedro", "Francisco"];

//! TEMPO CONSTANTE
// INDEPENDENTE DO TAMANHO DOS INPUTS, SEMPRE IMPRIME APENAS O PRIMEIRO ITEM
//? COMPLEXIDADE O(l)

void checkFirst(List<String> names) {
  if (names.isNotEmpty) {
    print(names.first);
  } else {
    print('no names');
  }
}

//! TEMPO LINEAR
// COM O AUMENTO DE DADOS, HÁ UM AUMENTO LINEAR NO TEMPO DE EXECUÇÃO
//? COMPLEXIDADE O(n)

void printNames(List<String> names) {
  for (final name in names) {
    print(name);
  }
}

//! TEMPO QUADRÁTICO
// AUMENTO EXPONENCIAL DO TEMPO DE EXECUÇÃO
//? COMPLEXIDADE O(n²)

void printMoreNames(List<String> names) {
  for (final _ in names) {
    //? _ Significa tamanho do array
    for (final name in names) {
      print(name);
    }
  }
}

//! TEMPO LOGARITMICO

const numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450];

bool naiveContains(int value, List<int> list) {
  for (final element in list) {
    if (element == value) return true;
  }
  return false;
}

//? MELHOR MANEIRA
//? Nesse método ele procura onde está o dado por camadas

bool betterNaiveContains(int value, List<int> list) {
  if (list.isEmpty) return false;
  final middleIndex = list.length ~/ 2; //! divisão com resultado em integer

  if (value > list[middleIndex]) {
    for (var i = middleIndex; i < list.length; i++) {
      if (list[i] == value) return true;
    }
  } else {
    for (var i = middleIndex; i >= 0; i--) {
      if (list[i] == value) return true;
    }
  }

  return false;
}
