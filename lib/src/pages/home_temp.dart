

import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {
  final contactos = ['juan','Luis','Pedro','Victor'];

   HomePageTemp({super.key});



  @override
  Widget build(BuildContext context) {


    return ListView(
      children: _crearLista(),
    );
  }
  
  List<Widget> _crearLista() {
   // List<Widget> lista = [];
    // forma 1
    // for (var element in contactos) {  // for each
    //   final item = ListTile(    // guardas en item el widget
    //     title: Text(element),
    //   );
      
    //   lista..add(item )     //agregas a la lista con el .. lo hace para volver a llamarla
    //   	  ..add(Divider());
    // }

var lista = contactos.map((e) {
    return Column(children:[ 
      ListTile(
        title: Text('$e!'),
        subtitle: Text('Subtitulo'),
        leading: Icon(Icons.account_balance_outlined), // icono inicio
        trailing: Icon(Icons.table_rows_rounded), // icono final
        onTap: () {print('PRESION');}),
        Divider(),
      ]);
  }).toList();




    return lista; // envias
  }




}