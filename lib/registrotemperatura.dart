
class RegistroTemperaturas {
  List<double> temperaturas = [];

  RegistroTemperaturas(this.temperaturas);

  double calcularPromedio() {
    if (temperaturas.isEmpty) // sirve para poder combrobar que la lista este vacio
    {
      return 0.0;
    }

    double suma = 0.0;

    for (double temp in temperaturas) {
      suma += temp;
    }

    return suma / temperaturas.length;// nos sirve para contar
  }

  int contarDiasCalurosos() {
    int diasCalurosos = 0;

    for (double temp in temperaturas) {
      if (temp > 30.0) {
        diasCalurosos++;
      }
    }

    return diasCalurosos;
  }

  void mostrarReporte() {
    print("\n====================================");
    print("REPORTE SEMANAL DE TEMPERATURAS");
    print("====================================");
    print("Temperaturas ingresadas: $temperaturas");
    print("Promedio semanal: ${calcularPromedio().toStringAsFixed(2)} °C");
    print("Días con más de 30 °C: ${contarDiasCalurosos()} días");
   
  }
}
