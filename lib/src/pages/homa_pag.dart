import 'package:componentes_widgets/src/pages/alert_page.dart';
import 'package:componentes_widgets/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

import '../Utils/icon_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: _Lista(),
    );
  }

  Widget _Lista() {
//  print(menu.opciones);

    return FutureBuilder(
        future: menu.cargarData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          print('builder');
          print(snapshot.data);
          return ListView(
            children: _itemsLista(snapshot.data!, context),
          );
        });
    // return ListView(
    //   children: _itemsLista(),
    // );
  }

  List<Widget> _itemsLista(List<dynamic> data, BuildContext context) {
    final List<Widget> items = [];

    data.forEach((element) {
      Widget item = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {

      Navigator.pushNamed(context, element['ruta']);

          // ruta para navegar sin nombre
          // final route = MaterialPageRoute(builder: (context) {
          //   return AlertPage();
          // });
          // Navigator.push(context, route);


        },
      );
      items
        ..add(item)
        ..add(Divider());
    });

    return items;
  }
}
