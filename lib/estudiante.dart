
class Estudiante {

  String nombre;
  double calificacion1;
  double calificacion2;
  double calificacion3;

  Estudiante(this.nombre, this.calificacion1, this.calificacion2,this.calificacion3);

  double calcularPromedio(){
    return(calificacion1 + calificacion2 + calificacion3 ) / 3;

  }
  String determinarEstado(){
    double promedio = calcularPromedio();
    if (promedio >= 13.0){
      return "Aprobado";
    }else{
    return "Desaprobado";
      }
  }

  void mostrarReporte(){
    print("------------------------------------");
    print("      Reporte del Estudiante");
    print("------------------------------------");
    print("Nombre: $nombre");
    print("Calificación 1: $calificacion1");
    print("Promedio: ${calcularPromedio().toStringAsFixed(2)}");
    print("Estado: ${determinarEstado()}");
  }

  } 

