import 'observador.dart';

// Observador

class PanelAlumno implements Observador {
  @override
  void actualizar(String tarea) {
    print("Panel Alumno: nueva tarea ${tarea}");
  }
}