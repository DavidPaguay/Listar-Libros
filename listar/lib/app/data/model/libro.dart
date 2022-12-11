import 'package:listar/app/data/model/abstract_model.dart';
import 'package:listar/app/data/model/autor.dart';

class Libro extends AbstractModel<int> {
  Libro({
    id,
    this.nombre,
    this.autor,
    this.numeroPaginas,
  }) : super(id);

  String? nombre;
  Autor? autor;
  int? numeroPaginas;

  factory Libro.fromJson(Map<String, dynamic> json) => Libro(
        id: json["id"],
        nombre: json["nombre"],
        autor: Autor.fromJson(json["autor"]),
        numeroPaginas: json["cantPaginas"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "autor": autor!.toJson(),
        "cantPaginas": numeroPaginas,
      };
}
