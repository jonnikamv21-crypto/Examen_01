import 'dart:io';
import 'vendedor.dart';

void main(){

  print("===================================");
  print("SISTEMA DE REGISTRO DE ESTUDIANTES");
  print("===================================");

  stdout.write("Escribir el nombre del Vendedor; ");
  String nombre =  stdin.readLineSync()!;

  stdout.write("Escribe el moto total de la Ventas: ");
  double monto= double.parse(stdin.readLineSync()!);
 
  Vendedor vendedor = Vendedor(nombre, monto);
  vendedor.mostrarReporte();
}