import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import '../services/ia_service.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {

  late CameraController controller;
  String resultado = "Escanea un residuo";

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      cameras[0],
      ResolutionPreset.medium,
    );

    controller.initialize().then((_) {
      if (!mounted) return;
      setState(() {});
    });
  }

  Future<void> capturarYAnalizar() async {
    await controller.takePicture();

    //  IA simulada
    String objeto = IAService.objetoDetectado();
    String tipo = IAService.analizarImagen(objeto);

    setState(() {
      resultado = "Detectado: $objeto → $tipo";
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Botanical Lens 🌿")),
      body: Stack(
        children: [
          CameraPreview(controller),

          // 🔥 UI tipo IA
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 3),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(resultado),
              ),
            ),
          ),

          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: capturarYAnalizar,
                child: const Text("Identificar"),
              ),
            ),
          )
        ],
      ),
    );
  }
}