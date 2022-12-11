import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listar/app/modules/listar/listar_controller.dart';

class ListarPage extends GetView<ListarController> {
  const ListarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Libros Disponibles')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
                onPressed: () => controller.loadLibros(),
                child: const Text("Listar")),
          ),
          Center(
            child: SizedBox(
                child: SingleChildScrollView(
              controller: ScrollController(),
              child: Obx(() => Center(
                    child: SizedBox(
                      height: 500,
                      child: ListView.builder(
                          itemCount: controller.libros.isNotEmpty
                              ? controller.libros.length
                              : 0,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 246, 239, 123),
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0), // Set border color
                                          width: 3.0),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10))),
                                  child: ListTile(
                                    textColor:
                                        const Color.fromARGB(255, 3, 3, 3),
                                    title: Text(
                                        "${controller.libros[index].nombre.toString()} Numero de Pagina:  ${controller.libros[index].numeroPaginas.toString().obs}"),
                                    subtitle: Text(
                                        " Autor: ${controller.libros[index].autor!.nombre.toString()}"),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  )),
            )),
          ),
        ],
      ),
    );
  }
}
