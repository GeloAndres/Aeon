import 'package:flutter/material.dart';

  const Color _customColor = Color(0xFF5D11D4);
  const List<Color> _colorThemes = [
    _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  ]; 


class AppTheme {
  final int selecterColor;

  AppTheme({this.selecterColor = 0})
    :assert(selecterColor >= 0 && selecterColor < (_colorThemes.length - 1),
    'la opcion de colores debe ser entre ${_colorThemes.length}'); 

  ThemeData theme(){
    return ThemeData(
    colorSchemeSeed: _colorThemes[selecterColor]
    );
  }
}