import 'dart:math' as math;

numerosPares(List<int> listaNumeros) {
  List<int> listaNumerosPares = [];
  listaNumeros.forEach((element) => {
        if (element % 2 == 0) {listaNumerosPares.add(element)}
      });
  return listaNumerosPares;
}

void main() {
  List<int> listaNumerosAleatorios =
      List.generate(8, (i) => math.Random().nextInt(100));

  print('Imprimiendo lista original: $listaNumerosAleatorios');
  print('Imprimiendo lista de pares: ${numerosPares(listaNumerosAleatorios)}');
}
