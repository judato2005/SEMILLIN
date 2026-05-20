class Residuo {

  // 🗑️ Nombre del residuo
  final String nombre;

  // ♻️ Tipo:
  // organico
  // reciclable
  // no_reciclable
  final String tipo;

  // 🎮 Puntos que da
  final int puntos;

  // 📸 Ruta de imagen (opcional)
  final String imagen;

  Residuo({
    required this.nombre,
    required this.tipo,
    required this.puntos,
    required this.imagen,
  });
}