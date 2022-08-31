import 'dart:convert';

import 'package:flutter/services.dart';

// leer un json clase
class _MenuProvider {
  List<dynamic> opciones = [];

  String ruta = 'data/menu_opts.json';
  _MenuProvider() {
  //  cargarData();
  }

// sirve para construir cuando toda esta funcion termina
  Future<List<dynamic>> cargarData() async {
    final res = await rootBundle.loadString(ruta); // respuesta del json
    Map dataMap = json.decode(res);
    // print(dataMap['rutas']);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menu = _MenuProvider();
