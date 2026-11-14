import 'dart:io';
import 'producto.dart';
 void main(){
  print("===================================");
  print("CONTROL DE INVENTARIO ");
  print("===================================");

  stdout.write("Escribir el nombre del Producto: ");
  String nombre = stdin.readLineSync()!;

  stdout.write("Ingrese el Precio Unitario: ");
  double precio = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la cantidad disponible: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  Producto producto = Producto(nombre, precio, cantidad);

  producto.mostrarInformacion();


 }