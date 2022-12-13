import 'package:listar/app/data/model/abstract_model.dart';
import 'package:listar/app/data/model/autor.dart';

class Libro extends AbstractModel<String> {
  Libro({
    id,
    this.nombre,
    this.numeroPaginas,
  }) : super(id);

  String? nombre;
  String? numeroPaginas;

  factory Libro.fromJson(Map<String, dynamic> json) => Libro(
        id: json["id"],
        nombre: json["nombre"],
        numeroPaginas: json["cantPaginas"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "cantPaginas": numeroPaginas,
      };
}
