//----------------------------- MIXINS ---------------------------------------
abstract class Dibujar {
  void dibujar() => print('Dibujando');
}

abstract class Leer {
  void leer() => print('Leyendo');
}

abstract class Ejercitarse {
  void ejercitarse() => print('Ejercitandose');
}

abstract class Boxear {
  void boxear() => print('Boxeando');
}

//----------------------------- CLASES ---------------------------------------

abstract class Persona {
  String nombre;
  String apellido;
  String edad;
  String profesion;

  Persona(this.nombre, this.apellido, this.edad, this.profesion);

  @override
  String toString() {
    return 'Nombre: $nombre, Apellido: $apellido, Edad: $edad, Profesion: $profesion';
  }
}

class Artista extends Persona with Dibujar {
  String nombreArtistico;

  Artista(String nombre, String apellido, String edad, String profesion,
      this.nombreArtistico)
      : super(nombre, apellido, edad, profesion);
}

class Ingeniero extends Persona with Dibujar, Leer {
  String ciencia;

  Ingeniero(String nombre, String apellido, String edad, String profesion,
      this.ciencia)
      : super(nombre, apellido, edad, profesion);
}

class Doctor extends Persona with Leer, Ejercitarse {
  String especialidad;

  Doctor(String nombre, String apellido, String edad, String profesion,
      this.especialidad)
      : super(nombre, apellido, edad, profesion);
}

class Atleta extends Persona {
  String deporte;

  Atleta(String nombre, String apellido, String edad, String profesion,
      this.deporte)
      : super(nombre, apellido, edad, profesion);
}

class Boxeador extends Atleta with Boxear, Ejercitarse {
  String peso;

  Boxeador(String nombre, String apellido, String edad, String deporte,
      String profesion, this.peso)
      : super(nombre, apellido, edad, deporte, profesion);
}

void main() {
  Artista artista =
      new Artista('Vincent', 'van Gogh', '50', 'Artista', 'van Gogh');
  Ingeniero ingeniero =
      new Ingeniero('Alexis', 'Acevedo', '27', 'Ingeniero', 'Sistemas');
  Doctor doctor = new Doctor('Ana', 'Maria', '25', 'Pediatria', 'Doctor');
  Boxeador boxeador =
      new Boxeador('Mike', 'Tyson', '26', 'Boxeo', '100kg', 'Boxeador');

  print('ARTISTA: ${artista.toString()}');
  artista.dibujar();
  print('Mi nombre artistico es ${artista.nombreArtistico}');
  //imprimir salto de linea
  print('');
  print('INGENIERO: ${ingeniero.toString()}');
  ingeniero.dibujar();
  ingeniero.leer();
  print('');
  print('DOCTOR: ${doctor.toString()}');
  doctor.leer();
  doctor.ejercitarse();
  print('');
  print('BOXEADOR: ${boxeador.toString()}');
  boxeador.boxear();
  boxeador.ejercitarse();
}
