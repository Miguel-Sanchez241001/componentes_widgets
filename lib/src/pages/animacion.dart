import 'dart:math';

import 'package:flutter/material.dart';

class AnimacionPage extends StatefulWidget {
  const AnimacionPage({super.key});

  @override
  State<AnimacionPage> createState() => _AnimacionPageState();
}

class _AnimacionPageState extends State<AnimacionPage> {
  double _heigth = 50.0;
  double _width = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry borde = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animaciones'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: borde,
          ),
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box_sharp),
        onPressed: _cambiarValores),
    );
  }
  
  _cambiarValores() {
      setState(() {
          _heigth = Random().nextInt(300).toDouble();
          _width =  Random().nextInt(300).toDouble();
         _color = Color.fromRGBO( Random().nextInt(300),  Random().nextInt(300),  Random().nextInt(300), 1);
         borde = BorderRadius.circular( Random().nextInt(80).toDouble());
        });
  }
}
