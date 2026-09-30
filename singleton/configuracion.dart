//constructor con singleton
class Configuracion {
  // Crea un constructor privado para la clase conf
  // No puede tener parametros y no puede ser llamado desde fuera de la clase
  Configuracion._();

  // Instancia unica de la clase
  static final Configuracion _instancia = Configuracion._();

  // Metodo factory que devuelve la instancia unica
  // Un constructor no tiene que vcrear una nueva instancia
  factory Configuracion() => _instancia;

  String idioma = 'es'; // Valor por defecto
}
