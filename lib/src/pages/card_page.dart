import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Cartas'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipo(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          
        ],
      ),
    );
  }

  Widget _cardTipo() {
    return Card(
      elevation: 8.0, // efecto sombra
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)) ,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Soy una carta'),
            subtitle: Text(
                'Mi funcion es mostrar un mensaje de forma facil de manipular '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end ,
            children: [
              TextButton(
                child: Text('OK'),
                onPressed: (() {}),
              ),
              TextButton(
                child: Text('cancelar'),
                onPressed: (() {}),
              ),
            ],
          )
        ],
      ),
    );
  }
  
  Widget _cardTipo1() {
    
    final card =  Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/cargando.gif'),
             image: NetworkImage('https://lastfm.freetls.fastly.net/i/u/ar0/73ada0c9f3d8cfe35e64a37502c369a3'),
             height: 450.0,     // dimeniones de la imagen
             fit: BoxFit.cover,  // forma en que ocupa la imagen el espacio
             ),
             Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Imagen PHONK'),
             )
        ],
      ) ,
    );
    return Container(
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(75),
         color: Colors.white,
         boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 10.0,
            color: Colors.black26,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0))
         ]
        // color: Colors.red
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(75),
        
        child: card,
      ),
    );
  }
}
