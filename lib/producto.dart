
class Producto {

  String nombre;
  double precioUnitario;
  int cantidadDisponible;

  Producto(this.nombre, this.precioUnitario, this.cantidadDisponible) {

    if (precioUnitario <= 0){
      precioUnitario = 1.0;
      print("El precio debe de ser mayor a cero. ");
    }
    if (cantidadDisponible< 0){
      cantidadDisponible = 0;
      print("La cantidad no puede ser negativa.");
    }
  }

  double calcularValorInventario(){
    return precioUnitario * cantidadDisponible;
  }
  String determinarEstadoStock(){
    if (cantidadDisponible ==0){
      return "Stock Agotado";
    } else if (cantidadDisponible <=5){
      return "Stock Bajo";
    }else{
      return "Stock Suficiente";
    }

  }
  void mostrarInformacion(){
    print("------------------------------------");
    print("      Informacion del Producto");
    print("------------------------------------");

    print("Nombre del producto: $nombre");
    print("Precio unitario: S/ ${precioUnitario.toStringAsFixed(2)}");
    print("Cantidad disponible: $cantidadDisponible unidades");
    print("Valor total del inventario: S/ ${calcularValorInventario().toStringAsFixed(2)}");
    print("Estado del stock: ${determinarEstadoStock()}");

  }

}