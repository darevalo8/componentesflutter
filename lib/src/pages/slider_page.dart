import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      divisions: 20,
      label: 'Tamaño de la imagen: ${_sliderValue.round()}',
      onChanged: (_checkValue)
          ? null
          : (valor) {
              setState(() {
                _sliderValue = valor;
              });
            },
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //   value: _checkValue,
    //   onChanged: (valor){
    //     setState(() {
    //       _checkValue = valor;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _checkValue,
      onChanged: (valor) {
        setState(() {
          _checkValue = valor;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _checkValue,
      onChanged: (valor){
        setState(() {
          _checkValue = valor;
        });
      },
    );
  }
  Widget _crearImagen() {
    return FadeInImage(
      image: NetworkImage(
          'https://i.pinimg.com/originals/97/54/f6/9754f6c22aeade64c3e77cf1c9406567.jpg'),
      width: _sliderValue,
      fit: BoxFit.contain,
      placeholder: AssetImage('assets/jar-loading.gif'),
      fadeInDuration: Duration(milliseconds: 200),
    );
  }

}
