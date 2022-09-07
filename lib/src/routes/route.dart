import 'package:componentes_widgets/src/pages/animacion.dart';
import 'package:componentes_widgets/src/pages/card_page.dart';
import 'package:componentes_widgets/src/pages/input.dart';
import 'package:componentes_widgets/src/pages/lista_page.dart';
import 'package:componentes_widgets/src/pages/slider.dart';
import 'package:componentes_widgets/src/pages/whasat_page.dart';
import 'package:flutter/material.dart';

import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/homa_pag.dart';

Map<String, WidgetBuilder> getAplcationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card' :(BuildContext context) => CardPage(),
    'animacion':(BuildContext context) => AnimacionPage(),
    'input' :(BuildContext context) => InputPage(),
    'slider':(BuildContext context) => SliderPage(),
    'lista': (BuildContext context) => ListaPage(),
    'wasa' : (BuildContext context) => WasaPage(),
  };
}
