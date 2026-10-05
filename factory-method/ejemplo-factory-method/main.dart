import 'generador_reportes.dart';

void main() {
  // Uso de la clase generadora de reportes
  final generador = GeneradorReportes();
  generador.generarReporte('json', [9, 8, 9, 10, 9, 0, 0, 0, 0]);
  generador.generarReporte('texto', [9, 8, 9, 10, 9, 0, 0, 0, 0]);
  generador.generarReporte('excel', [9, 8, 9, 10, 9, 0, 0, 0, 0]);
}
