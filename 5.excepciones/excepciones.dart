String obtenerNombre({required String nombre}) {
  if (nombre == "juan") {
    throw FormatException('El nombre $nombre no puede ser procesado');
  }

  return nombre;
}

void main() {
  try {
    String resultado = obtenerNombre(nombre: 'juan');
    print(resultado);
  } on FormatException catch (e) {
    print("FormatException");
    print(e);
  } catch (e) {
    print("Error general");
  }
}
