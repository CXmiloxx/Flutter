import 'package:flutter/material.dart';

const Color _colorPersonalizado = Color(0xFF49149f);

const List<Color> _colorTemas = [
  _colorPersonalizado,
  Colors.red,
  Colors.white,
  Colors.black,
  Colors.grey,
  Colors.blue,
  Colors.pink,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.brown,
  Colors.purple,
  Colors.teal,
  Colors.indigo,
  Colors.cyan,
  Colors.lightGreen,
  Colors.amber,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.lime,
  Colors.brown,
  Colors.blueGrey,
];

class AppTema {
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTemas[5],
    );
  }
}
