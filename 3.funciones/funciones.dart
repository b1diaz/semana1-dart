String obtenerNombreFuncionFlecha(String valor) => 'Hola $valor';

String obtenerNombre(String nombre) {
  return 'Hola $nombre';
}

String obtenerFuncionNameParameter({required String nombre}) {
  return 'Hola $nombre';
}

String funcionParametrosDefecto(String nombre, [int? valor2]) {
  return 'Hola $nombre';
}

void main() {
  var miFuncionAnonima = (String nombre) {
    return 'Hola $nombre';
  };
  print(miFuncionAnonima('Juan'));
  print(obtenerNombreFuncionFlecha('Juan'));
}
