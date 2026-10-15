import 'dart:math';

class ArmstrongLogica {
  bool esArmstrong(int numero) {
    if (numero < 0) return false;
    String str = numero.toString();
    int numCifras = str.length;
    int suma = 0;
    int temp = numero;

    while (temp > 0) {
      int digito = temp % 10;
      suma += pow(digito, numCifras).toInt();
      temp ~/= 10;
    }
    return suma == numero;
  }
}
