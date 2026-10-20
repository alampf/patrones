// Agenda con Observer
import 'observador.dart';

// Sujeto observado

class Agenda {
  final List<Observador> _observadores = [];
  void suscribir(Observador observador) {
    _observadores.add(observador);
  }
  
  void desuscribir(Observador observador) {
    _observadores.remove(observador);
  }

  void publicarTarea(String tarea) {
    print("Publicando: ${tarea}");
    for (final observador in _observadores) {
      observador.actualizar(tarea);
    }
  }
  // Con Observer, la agenda solo conoce el contrato Observador.
  // Las clases destinararias de suscriben o se desuscriben de la agenda.
  // Agregar a otra clase destinataria solo implica crear suscribirse a otro Observer.
}
