import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.greenAccent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: this._width,
          height: this._height,
          decoration: BoxDecoration(
              borderRadius: this._borderRadius, color: this._color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_filled),
        onPressed: _cambiarColor,
      ),
    );
  }

  void _cambiarColor() {
    final random = Random();
    setState(() {
      this._width = random.nextInt(300).toDouble();
      this._height = random.nextInt(300).toDouble();
      this._color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      this._borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
