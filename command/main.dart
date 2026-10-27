import 'agenda.dart';

void main() {
  final agenda = Agenda();
  
  print('Las tareas pendientes son: ${agenda.tareas}');
  
  // Eliminar tareas
  agenda.eliminar(2);
  print('Lista de tareas actual despues de borrar: ${agenda.tareas}');
  
  // Deshacer la eliminacion
  agenda.deshacer();
  print('Lista de tareas actual: ${agenda.tareas}');
}