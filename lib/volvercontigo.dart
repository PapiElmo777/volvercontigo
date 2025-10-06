int calculargotitas(List<int> alturas) {
  if (alturas.length <= 2) {
    return 0;
  }
  int totalAgua = 0;
  int punteroIzquierdo = 0;
  int punteroDerecho = alturas.length - 1;
  int maximoIzquierdo = 0;
  int maximoDerecho = 0;

   while (punteroIzquierdo < punteroDerecho) {
    if (alturas[punteroIzquierdo] < alturas[punteroDerecho]) {
      if (alturas[punteroIzquierdo] >= maximoIzquierdo) {
        maximoIzquierdo = alturas[punteroIzquierdo];
      } else {
        totalAgua += maximoIzquierdo - alturas[punteroIzquierdo];
      }
      punteroIzquierdo++;
    } else {
      punteroDerecho--;
    }
  }

  return totalAgua;
}