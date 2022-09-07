import 'dart:ffi';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double numero = 10.0;
  bool estado = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderPage'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: [
            _crearSlider(),
            _crearChebox(),
            _crearChebox1(),
            _crearSwicht(),
            Text('$numero'),
            _crearImagen(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        label: 'Estas en $numero',
        divisions: 10,
        value: numero,
        min: 10,
        max: 450,
        onChanged: (estado) ? null : (value) => setState(() => numero = value));
  }

  _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://pps.whatsapp.net/v/t61.24694-24/298930369_1263560841094698_5698311509861374352_n.jpg?ccb=11-4&oh=01_AVzfVwghGjzYWkNsL2t6FbHiUbBWo09vPWt3tT0Fx8DZMg&oe=6324433E'),
      fit: BoxFit.fitWidth,
      width: numero,
    );
  }

  _crearChebox() {
    return Checkbox(
      value: estado,
      onChanged: (value) => setState(() => estado = value!),
    );
  }

  _crearChebox1() {
    return CheckboxListTile(
      title: Text('soy un checkbox'),
      value: estado,
      onChanged: (value) => setState(() => estado = value!),
    );
  }
    _crearSwicht() {
    return SwitchListTile(
      title: Text('soy un checkbox'),
      value: estado,
      onChanged: (value) => setState(() => estado = value),
    );
  }
}
