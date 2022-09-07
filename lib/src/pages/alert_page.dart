import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Alerta'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarAlerta(context),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, shape: StadiumBorder()),
          child: Text('boton'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text('Soy una alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Soy el contenido de esta alerta'),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancelar'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, shape: StadiumBorder()),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('ok'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, shape: StadiumBorder()),
            ),
          ],
        );
      },
    );
  }
}
