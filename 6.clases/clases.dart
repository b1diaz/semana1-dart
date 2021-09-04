class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona(this.nombre, this.apellido, this.edad);
}

class padre extends Persona {
  int hijos;
  padre({required this.hijos}) : super('carlos', 'herrara', 23);
}

class empleado implements Persona {
  @override
  String apellido;

  @override
  int edad;

  @override
  String nombre;

  empleado({required this.nombre, required this.apellido, required this.edad});
}

abstract class vehiculo {
  String? placa;
  void encender();
}

class taxi extends vehiculo with terrestre {
  bool encender() => true;
}

class lancha extends vehiculo with acautico {
  bool encender() => true;
}

mixin terrestre {
  int? llantas;
  int? kilometraje;

  tipoVehiculo() {
    return 'terrestre';
  }
}

mixin acautico {
  int? velas;

  tipoVehiculo() {
    return 'acuatico';
  }
}

void main() {
  var persona = Persona('Juan', 'Perez', 30);
  var elPadre = padre(hijos: 2);
  print(persona.nombre);

  var carroVehiculo = taxi();
  carroVehiculo.llantas = 4;

  var lanchaVehiculo = lancha();

  print(carroVehiculo.encender());
}
