void main() {
  //Numbers
  int edadInt = 23;
  double puntosDouble = 10.2;

  num edadNum = edadInt;

  //string
  var texto1 = 'valor con comillas simple';
  var texto2 = "valor con comillas simple";
  var texto3 = "It's ease";
  var texto4 = 'It\'s ease';

  //Concatenar
  var texto5 = "primera parte" + ", yo me uno - Forma tradicional";
  var texto6 = "primera parte" ", yo me uno - Forma Dart";

  //Interpolar
  var interpolacion = "esta es una interpolacion ${texto3}";
  var interpolacion2 = "esta es una interpolacion $texto3";

  var texto7 = "Vamos a interpolar texto \'$texto6\'. terminado";

  var textoMultilinea = ''' 
     CREATE TABLE table_name (
        column1 datatype,
        column2 datatype,
        column3 datatype
    ); ''';

  var texto011 = r'mostrar este caracter \';

  print(texto2);
  print(edadNum);
  print(interpolacion2);

  //------------------------ BOLEANOS ------------------------
  String textoBool = "";
  if (textoBool.isEmpty) {
    print("El texto esta vacio");
  }

  //------------------------ LISTAS ------------------------
  var lista = ['mazda', 'kia', 'renault'];
  List<String> lista2 = ['mazda', 'kia', 'renault'];

  var lista3 = ['chevrolet', ...lista2];
  lista3.add('ford');
  var lista7 = ["hola", 1, true, null];

// spread
  var lista4 = [...lista2, ...lista3];

  List<String>? lista6 = null;
  var listas5 = [...lista3, ...?lista6];

  print(lista);
  print(lista2);
  print('imprimiendo lista 3 ${lista3}');

//sets
  var listaSet = {'mazda', 'kia', 'renault'};
//maps
  var maps = {
    'red': 'rojo',
    'green': 'verde',
    'blue': 'azul',
  };
  maps.clear();
}
