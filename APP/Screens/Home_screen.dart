import 'dart:math';
import 'package:flutter/material.dart';

// 📦 IMPORTS
import '../models/residuo.dart';
import 'camera_screen.dart';
import 'garden_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ♻️ LISTA DE RESIDUOS
  final List<Residuo> residuos = [

    Residuo(
      nombre: "Cáscara de banana",
      tipo: "organico",
      puntos: 10,
      imagen: "",
    ),

    Residuo(
      nombre: "Botella plástica",
      tipo: "reciclable",
      puntos: 15,
      imagen: "",
    ),

    Residuo(
      nombre: "Bolsa sucia",
      tipo: "no_reciclable",
      puntos: 5,
      imagen: "",
    ),
  ];

  final rng = Random();

  late Residuo residuoActual;

  int puntos = 0;

  @override
  void initState() {
    super.initState();

    generarResiduo();
  }

  // 🎲 GENERAR RESIDUO
  void generarResiduo() {
    residuoActual = residuos[
      rng.nextInt(residuos.length)
    ];
  }

  // 🎮 CLASIFICAR
  void clasificar(String tipoSeleccionado) {

    setState(() {

      if (tipoSeleccionado == residuoActual.tipo) {
        puntos += residuoActual.puntos;
      } else {
        puntos -= 5;
      }

      generarResiduo();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Trash2Grow 🌱"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // 🗑️ RESIDUO ACTUAL
            Text(
              residuoActual.nombre,
              style: const TextStyle(fontSize: 25),
            ),

            const SizedBox(height: 20),

            // 🎮 PUNTOS
            Text(
              "Puntos: $puntos",
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 30),

            // ♻️ BOTONES CLASIFICACIÓN
            ElevatedButton(
              onPressed: () => clasificar("organico"),
              child: const Text("Orgánico"),
            ),

            ElevatedButton(
              onPressed: () => clasificar("reciclable"),
              child: const Text("Reciclable"),
            ),

            ElevatedButton(
              onPressed: () => clasificar("no_reciclable"),
              child: const Text("No reciclable"),
            ),

            const SizedBox(height: 30),

            // 📸 IR A CÁMARA
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CameraScreen(),
                  ),
                );
              },
              child: const Text("Abrir Cámara"),
            ),

            const SizedBox(height: 10),

            // 🌿 IR A JARDÍN
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const GardenScreen(),
                  ),
                );
              },
              child: const Text("Ver Jardín"),
            ),
          ],
        ),
      ),
    );
  }
}