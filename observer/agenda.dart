// Agenda sin Observer
import 'notificador.dart';
import 'panel_alumno.dart';

class Agenda {
  final PanelAlumno panelAlumno = PanelAlumno();
  final Notificador notificador = Notificador();

  void publicarTarea(String tarea) {
    print("Publicando: ${tarea}");
    panelAlumno.mostrar(tarea);
    notificador.notificar(tarea);
  }
  // Sin Observer la agenda termina de encargase de todo:
  // publicar tareas, coordinar componentes de otro tipo, etc.
}
