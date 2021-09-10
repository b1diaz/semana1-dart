import 'dart:math' as math;

//metodo que retorna los elementos comunes entre dos listas
List<int> interseccion(List<int> lista1, List<int> lista2) {
  List<int> listaInterseccion = [];
  for (int i = 0; i < lista1.length; i++) {
    for (int j = 0; j < lista2.length; j++) {
      if (lista1[i] == lista2[j]) {
        listaInterseccion.add(lista1[i]);
      }
    }
  }
  return listaInterseccion;
}

eliminarRepetidos(List<int> lista) {
  List<int> listaSinRepetidos = [];
  for (int i = 0; i < lista.length; i++) {
    if (!listaSinRepetidos.contains(lista[i])) {
      listaSinRepetidos.add(lista[i]);
    }
  }
  return listaSinRepetidos;
}

void main() {
  List<int> lista1 = List.generate(6, (i) => math.Random().nextInt(100));
  List<int> lista2 = List.generate(8, (i) => math.Random().nextInt(100));
  print('Lista 1: $lista1');
  print('Lista 2: $lista2');
  //retornar elementos comunes entre ambas listas
  List<int> listaComunes = interseccion(lista1, lista2);
  print(
      'Elementos comunes entre ambas listas ${eliminarRepetidos(listaComunes)}');
}
