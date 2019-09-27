import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(children: this._crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = List<Widget>();
    for (String opt in this.opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgets = this.opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("pruebita"),
            leading: Icon(Icons.adjust),
            trailing: Icon(Icons.airline_seat_individual_suite),
          ),
          Divider(),
        ],
      );
    }).toList();
    return widgets;
  }
}
