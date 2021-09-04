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

  print(texto2);
  print(edadNum);
  print(interpolacion2);
}
