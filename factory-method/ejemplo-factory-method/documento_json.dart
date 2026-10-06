import 'dart:convert';

import 'documento.dart';

class DocumentoJson implements Documento {
  @override
  String generar(List<int> calificaciones) {
    // Debe ser generado el documento de word.
    return jsonEncode({'Formato JSON => calificaciones': calificaciones});
  }
}