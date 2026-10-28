class Agenda {
  final tareas = [
    '\nEstudiar Dart',
    '\nHacer mis Hus',
    '\nPreguntarle a chat como hacer un merge',
    '\nDecirle a chat que haga mi tarea de ingles',
    '\nHacer UI de la app movil',
  ];
  
  // Guardan toda la informacion de la tarea eliminada
  String? eliminada; // La tarea eliminada
  int? posicionAnterior; // La posicion de la tarea en el arreglo
  
  void eliminar(int posicion) {
    eliminada = tareas.removeAt(posicion);
    posicionAnterior = posicion;
  }
  
  void deshacer() {
    // Undelete
    final tarea = eliminada;
    final posicion = posicionAnterior;
    
    // Si hay datos (tarea eliminada), proceder a recuperarla
    if (tarea != null && posicion != null) {
      tareas.insert(posicion, tarea);
      eliminada = null;
      posicionAnterior = null;
    }
  }
}