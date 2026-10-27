import 'cine_facade.dart';
import 'reproductor.dart';
import 'proyector.dart';
import 'sistema_audio.dart';

void main() {
  final cine = CineFacade(
    Proyector(),
    SistemaAudio(),
    Reproductor(),
  );
  
  // Reproducir pelicula
  cine.verPelicula('Cars', 25);

  cine.terminarFuncion();
  
  // La fachada coordina los pasos.
  // El usuario de la fachada (dev) solo conoce los metodos basicos
  // El usuario no necesita conocer los detalles
  // El procedimeinto se concentra en una clase.
}
