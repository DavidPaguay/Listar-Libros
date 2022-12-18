import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listar/app/modules/crear/crear_controller.dart';
import 'package:listar/app/routes/app_routes.dart';

class CrearPage extends GetView<CrearController> {
  const CrearPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Agregar Un Celular Disponible'), actions: [
        IconButton(
            onPressed: () => Get.offNamedUntil(AppRoutes.HOME, (_) => false),
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ))
      ]),
      body: Column(
        children: [
          Center(
            child: SizedBox(
                child: SingleChildScrollView(
              controller: ScrollController(),
              child: Obx(() => Center(
                    child: SizedBox(
                        child: Form(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: Text("Marca".obs.value),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: TextField(
                            onChanged: (value) {
                              controller.celular.value.marca = value;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: Text("Nombre".obs.value),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: TextField(
                            onChanged: (value) {
                              controller.celular.value.nombre = value;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: Text("Precio".obs.value),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: TextField(
                            onChanged: (value) {
                              controller.celular.value.precio = value;
                            },
                          ),
                        ),
                      ]),
                    )),
                  )),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
                onPressed: () => controller.guardarCelular(),
                child: const Text("Crear")),
          ),
        ],
      ),
    );
  }
}
