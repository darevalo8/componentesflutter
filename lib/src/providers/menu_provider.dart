import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  Future<List<dynamic>> cargarData() async {
    final respuesta = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(respuesta);
    this.opciones = dataMap['rutas'];
    return this.opciones;
  }
}

final menuProvider = _MenuProvider();
