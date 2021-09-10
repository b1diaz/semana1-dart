palindromo(palabra) {
  var palabraInvertida = "";
  for (var i = palabra.length - 1; i >= 0; i--) {
    palabraInvertida += palabra[i];
  }
  if (palabra == palabraInvertida) {
    return true;
  } else {
    return false;
  }
}

void main() {
  var listaPalabrasPrueba = [
    "palabra1",
    "palabra2",
    "palabra3",
    "reconocer",
    "ana"
  ];

  listaPalabrasPrueba.forEach((palabra) => {
        if (palindromo(palabra))
          {print("La palabra $palabra SI es palindromo")}
        else
          {print("La palabra $palabra NO es palindromo")}
      });
}
