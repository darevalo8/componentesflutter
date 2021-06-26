import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  final elevatedButtonStyle = ElevatedButton.styleFrom(
    // onPrimary: Colors.black87,
    // primary: Colors.grey[300],
    // minimumSize: Size(88, 36),
    // padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
  final textButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Mostrar alerta',
          ),
          style: elevatedButtonStyle,
          onPressed: () => this._mostrarAlerta(context),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('titulo'),
            content: Column(
              // se adapta el tamaño al contenido
              //el contenido dice que tan ancho es
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('contenido caja alerta'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
