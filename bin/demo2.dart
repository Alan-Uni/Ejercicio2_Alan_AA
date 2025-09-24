/* import 'package:demo2/demo2.dart' as demo2;

void main(List<String> arguments) {
  //ejemploListas();
  //ejemploMapas();
  ejemploFor();
}
void ejemploListas() {
  var lista = [1, 2, 3, 4, 5];
  print(lista);
  print(lista.length);
  print(lista[3]);
  lista.add(6);
  print(lista);
  lista.remove(2);
  print(lista);
  lista.removeLast();
  print(lista);
  lista.removeAt(0);
  print(lista);
  lista.insert(0,10);
  print(lista);

}

void ejemploMapas() {
  Map<String, int> alumno = {
    'Juan': 23,
    'Alan': 20,
    'Citlalli': 22
  };
  print(alumno);
  print(alumno.length);
  print(alumno['Alan']);
  alumno['Maria'] = 21;
  print(alumno);
  alumno.remove('Juan');
  print(alumno);
}
void ejemploFor() {
  var lista = [1, 2, 3, 4, 5];
  for (var i = 0; i < lista.length; i++) {
    print(lista[i]);
  }
  for (var item in lista) {
    print(item);
  }
} */

import 'dart:io';

void main() {
  List<Map<String, dynamic>> productos = [];

  print("--- Ingresa los datos de 3 productos ---");

  for (int i = 0; i < 3; i++) {
    print("\n--- Producto ${i + 1} ---");

    stdout.write("Nombre del producto: ");
    String nombre = stdin.readLineSync()!;

    stdout.write("Existencia: ");
    int existencia = int.parse(stdin.readLineSync()!);

    stdout.write("Precio: ");
    double precio = double.parse(stdin.readLineSync()!);

    Map<String, dynamic> producto = {
      'nombre': nombre,
      'existencia': existencia,
      'precio': precio,
    };

    productos.add(producto);
  }

  print("\n=========================================");
  print("--- Inventario de Productos ---");
  for (int i = 0; i < productos.length; i++) {
    print(
        "Producto: ${productos[i]['nombre']} | Existencia: ${productos[i]['existencia']} | Precio: \$${productos[i]['precio']}");
  }
  print("=========================================\n");


  double sumaTotal = 0;
  int contador = 0;
  while (contador < productos.length) {
    sumaTotal += productos[contador]['precio'];
    contador++;
  }
  double promedio = sumaTotal / productos.length;
  print("📈 El precio promedio de los productos es: \$${promedio.toStringAsFixed(2)}");


  Map<String, dynamic> productoMasCaro = productos[0];
  for (var producto in productos) {
    if (producto['precio'] > productoMasCaro['precio']) {
      productoMasCaro = producto;
    }
  }
  print(
      "👑 El producto más caro es: ${productoMasCaro['nombre']} con un precio de \$${productoMasCaro['precio']}");
}