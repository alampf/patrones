// import 'agenda.dart';
import 'controlador_comandos.dart';
import 'eliminar_tarea.dart';

void main() {
  final tareas = [
    '\nEstudiar Dart',
    '\nHacer mis Hus',
    '\nPreguntarle a chat como hacer un merge',
    '\nDecirle a chat que haga mi tarea de ingles',
    '\nHacer UI de la app movil',
  ];
  
  final controlador = ControladorComandos();
  
  print('Las tareas pendientes son: $tareas');
  
  controlador.ejecutar(EliminarTarea(tareas, (1)));
  
  print('Lista de tareas actual despues de borrar: $tareas');
  
  controlador.ejecutar(EliminarTarea(tareas, (0)));

  // Deshacer la eliminacion 
  controlador.deshacer();
  print('Lista de tareas despues de primer deshacer: $tareas');
  
  controlador.deshacer();
  print('Lista de tareas despues del segundo deshacer: $tareas');
  
  // Cada comando conserva su propia eliminacion
  // Cada comando conoce como ejecutar y revertir la accion
  // Ahora se pueden agregar mas comandos a la agenda
  // Conveniente cuando se requiere manipular un historial de comandos
}
