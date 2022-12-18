import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listar/app/routes/app_routes.dart';

class HomePage extends GetView {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agregar Un Celular Disponible')),
      body: Padding(
        padding: const EdgeInsets.only(top: 48.0),
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () =>
                      Get.offNamedUntil(AppRoutes.CREAR, (_) => false),
                  child: const Text("Crear")),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                  onPressed: () =>
                      Get.offNamedUntil(AppRoutes.LISTAR, (_) => false),
                  child: const Text("Listar")),
            ),
          ],
        ),
      ),
    );
  }
}
