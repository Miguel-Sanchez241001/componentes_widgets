import 'package:flutter/material.dart';
class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar( 
        title: Text('Pagina Avatar'),
      ),
      body: Text('Cuerpo'),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.exit_to_app),
        onPressed: (){
          Navigator.pop(context); 
        },
         ),
    );


    
  }
}