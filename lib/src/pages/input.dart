import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _fecha = '';
  String opcion = 'Peru';
  TextEditingController txt =
      TextEditingController(); // controlador para editar cajas de texto

  DateTime date = DateTime(2022, 9, 20);
  List<String> paises = ['Peru','Nigeria','Croacia','Alemania'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        children: [
          _crearDropdownbutton(),
          Divider(),
          _crearInput(),
          Divider(),
          _crearInputEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearPersona(),
          Divider(),
          _crearFecha(context),
          Center(
            child: Text('${(date.year)}/${(date.month)}/${(date.day)}'),
          ),
          Divider(),
          _crearDropdownbutton(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Fecha'),
        onPressed: () async {
          DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: date,
              firstDate: DateTime(2015),
              lastDate: DateTime(2100));
          if (newDate == null) return;

          setState(() => date = newDate);
          txt.text = '${(date.year)}/${(date.month)}/${(date.day)}';
        },
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          icon: Icon(Icons.person),
          suffixIcon: Icon(Icons.help_outline_outlined),
          counter: Text('Letras ${(_nombre.length)} '),
          hintText: 'Juan Herrera',
          labelText: 'Nombre Completo',
          helperText: 'Solo nombres'),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },
    );
  }

  _crearPersona() {
    return ListTile(
      title: Text('Nombre $_nombre'),
      subtitle: Text('Email $_email'),
    );
  }

  _crearPassword() {
    return TextField(
      obscureText: true,
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          icon: Icon(Icons.person),
          suffixIcon: Icon(Icons.help_outline_outlined),
          counter: Text('Letras ${(_nombre.length)} '),
          hintText: 'Juan Herrera',
          labelText: 'Nombre Completo',
          helperText: 'Solo nombres'),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },
    );
  }

  _crearInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          icon: Icon(Icons.mail),
          suffixIcon: Icon(Icons.email_outlined),
          counter: Text('Letras ${(_email.length)} '),
          hintText: 'juanito_19@gmail.com',
          labelText: 'Correo',
          helperText: 'Solo Gmail'),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: txt,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          icon: Icon(Icons.mail),
          suffixIcon: Icon(Icons.email_outlined),
          counter: Text('fechaa ${(date.toString())} '),
          hintText: 'Fecha',
          labelText: '14/2/1999',
          helperText: 'Solo fecha'),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selecDate(context);
      },
    );
  }

  void _selecDate(BuildContext context) async {
    DateTime? newDate = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2015),
        lastDate: DateTime(2100),
        locale: const Locale('es', 'ES'));
    if (newDate == null) return;
    setState(() => date = newDate); // acuerdate de los parentesis hijo de perra
    txt.text = '${(date.year)}/${(date.month)}/${(date.day)}';
  }

  Widget _crearDropdownbutton() {
    return DropdownButton(
      value:opcion,
      items: getItemDropDown(),
     onChanged: (opt){ 
      setState(() {
           opcion = opt.toString();
      });
    });
  }
  
  List<DropdownMenuItem<String>> getItemDropDown() {
    List<DropdownMenuItem<String>> lista = [];
    paises.forEach((element) {
       var e = DropdownMenuItem(
        child: Text(element),
        value: element, 
    );
      lista.add(e);
    });
    return lista;
  }
}
