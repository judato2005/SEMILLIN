import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

// Importa tus pantallas
import 'Screens/Home_screen.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializar cámaras
  cameras = await availableCameras();

  runApp(const Trash2GrowApp());
}

class Trash2GrowApp extends StatelessWidget {
  const Trash2GrowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trash2Grow 🌱',

      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),

      // Pantalla inicial
      home: const HomeScreen(),
    );
  }
}