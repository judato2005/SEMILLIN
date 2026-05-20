import 'dart:math';

class IAService {
  static final Map<String, String> clasificacionIA = {
    "banana": "organico",
    "botella": "reciclable",
    "papel": "reciclable",
    "bolsa": "no_reciclable",
  };

  static String analizarImagen(String nombreSimulado) {
    return clasificacionIA[nombreSimulado] ?? "no_reciclable";
  }

  static String objetoDetectado() {
    final objetos = clasificacionIA.keys.toList();
    return objetos[Random().nextInt(objetos.length)];
  }
}
// IA de ejemplo
