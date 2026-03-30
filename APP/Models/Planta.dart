class Planta {
  final String nombre;
  final String emoji;
  final int puntosNecesarios;
  bool desbloqueada;
  int nivel;

  Planta({
    required this.nombre,
    required this.emoji,
    required this.puntosNecesarios,
    this.desbloqueada = false,
    this.nivel = 1,
  });

  // Método para subir nivel
  void subirNivel() {
    nivel++;
  }

  // Método para desbloquear
  void desbloquear(int puntosUsuario) {
    if (puntosUsuario >= puntosNecesarios) {
      desbloqueada = true;
    }
  }
}