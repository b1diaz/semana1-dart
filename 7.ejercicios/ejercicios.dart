import 'dart:math';

//funcion que suma una lista de numeros
int sumar(List<int> lista) {
  //sumar una lista de numeros
  int suma = 0;
  for (int i = 0; i < lista.length; i++) {
    suma += lista[i];
  }
  return suma;
}

main() {
  //lista aleatoria de 6 elementos desde 1 a 100
  List<int> listaEdades = List.generate(6, (i) => Random().nextInt(100));

  //imprimir la lista
  print('Lista de edades: $listaEdades');

  //mostrar mayor menor y promedio de edades
  print('Mayor: ${listaEdades.reduce(max)}');
  print('Menor: ${listaEdades.reduce(min)}');

  //promedio de edades
  print('Promedio: ${sumar(listaEdades) / listaEdades.length}');

  print('Promedio: ${(sumar(listaEdades) / listaEdades.length).round()}');
}
