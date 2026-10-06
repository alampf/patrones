import 'generador_excel.dart';
import 'generador_json.dart';
import 'generador_reportes.dart';
import 'generador_texto.dart';

void main() {
  // Uso de la clase generadora de reportes
  final generadores = <GeneradorReportes>[
    GeneradorTexto(),
    GeneradorExcel(),
    GeneradorJson(),
  ];
  for (final generador in generadores) {
    generador.generarReporte([10, 9, 8, 9, 8]);
  }
}
