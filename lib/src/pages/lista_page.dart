import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController controllerScroll = ScrollController();
  List<int> indexes = [];
  bool isLoading = false;

  // cuando se entra a la pagina por primera vez
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregarItems();
    controllerScroll.addListener(() {
      if (controllerScroll.position.pixels ==
          controllerScroll.position.maxScrollExtent) {
        // _agregarItems();
        fechtData();
      }
    });
  }

  // cuando se cierra la pagina
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controllerScroll.dispose(); // elimina el listiner
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista page'),
      ),
      body: Stack(
        children: [
          _crearListBuilder(),
          _crearLoading(),
        ],
      ),
    );
  }

  _crearListBuilder() {
    return RefreshIndicator(
      onRefresh: refresF,
      child: ListView.builder(
        controller: controllerScroll,
        itemCount: indexes.length,
        itemBuilder: (context, index) {
          return FadeInImage(
              placeholder: AssetImage('assets/cargando.gif'),
              image: NetworkImage(
                  // ignore: unnecessary_null_comparison
                  'https://picsum.photos/id/${((indexes[index] != null) ? indexes[index] : 1)}/500/300'));
        },
      ),
    );
  }

  _agregarItems() {
    for (var i = 0; i < 5; i++) {
      indexes.add(Random().nextInt(80) + 1);
    }
    setState(() {});
  }

  Future fechtData() async {
    isLoading = true;
    setState(() {});
    return await Timer(Duration(seconds: 2), respuestaHttp);
  }

  void respuestaHttp() {
    isLoading = false;
    _agregarItems();
    controllerScroll.animateTo(controllerScroll.position.pixels + 150,
        duration: Duration(milliseconds: 450), curve: Curves.fastOutSlowIn);
  }

  _crearLoading() {
    if (isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max, // tamano maximo
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  Future<Null> refresF() async {
     Timer(
      Duration(seconds: 3),
      () {
        
        indexes.insert(0, Random().nextInt(10)+1);
        _agregarItems();
      },
    );
    return Future.delayed(Duration(seconds: 3));
  }
}
