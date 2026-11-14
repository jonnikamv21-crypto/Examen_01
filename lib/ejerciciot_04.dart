
import 'dart:io';
import 'registrotemperatura.dart';

void main() {
  print("====================================");
  print("   REGISTRO DE TEMPERATURAS");
  print("====================================");

  List<double> temperaturas = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write("Ingrese la temperatura del día $i (°C): ");
    double temperatura = double.parse(stdin.readLineSync()!);

    temperaturas.add(temperatura);
  }

  RegistroTemperaturas registro = RegistroTemperaturas(temperaturas);

  registro.mostrarReporte();
}
