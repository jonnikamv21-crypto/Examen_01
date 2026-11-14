 
class Vendedor {
  String nombre;
  double montoTotal;

  Vendedor(this.nombre, this.montoTotal);

  double calcularComision(){
    if(montoTotal >= 2000.0){
      return montoTotal * 0.10;
    }else{
      return montoTotal * 0.05;
    }
  }
  void mostrarReporte(){
    print("\n====================================");
    print("      REPORTE DE COMISIONES");
    print("======================================");

    print("Nombre del vendedor: $nombre");
    print("Monto total de ventas: S/ ${montoTotal.toStringAsFixed(2)}");
    print("Comisión obtenida: S/ ${calcularComision().toStringAsFixed(2)}");
  }

}