import 'dart:io';
import 'estudiante.dart';

void main(){
  print("===================================");
  print("SISTEMA DE REGISTRO DE ESTUDIANTES");
  print("===================================");

  stdout.write("Ingresar el nombre : " );
  String nombre = stdin.readLineSync()!;

  stdout.write("Ingrese la calificación 1: ");
  double nota1 = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la calificación 2: ");
  double nota2 = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la calificación 3: ");
  double nota3 = double.parse(stdin.readLineSync()!);
   
  Estudiante estudiante = Estudiante(
    nombre,
    nota1,
    nota2,
    nota3,
  );

  estudiante.mostrarReporte();

}