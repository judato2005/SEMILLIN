ElevatedButton(
  onPressed: () {
    Navigator.push(context,
      MaterialPageRoute(builder: (_) => const CameraScreen()));
  },
  child: const Text("Abrir Cámara"),
),

ElevatedButton(
  onPressed: () {
    Navigator.push(context,
      MaterialPageRoute(builder: (_) => const GardenScreen()));
  },
  child: const Text("Ver Jardín"),
),