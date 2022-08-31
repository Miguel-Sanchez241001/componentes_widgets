import 'package:componentes_widgets/src/pages/alert_page.dart';
import 'package:flutter/material.dart';
import 'package:componentes_widgets/src/routes/route.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi app',
      debugShowCheckedModeBanner: false,
      // home: Scaffold(appBar: AppBar(title: Text('lista test')),
      // body: HomePageTemp(),
    initialRoute: '/',
    routes: getAplcationRoutes(),
    onGenerateRoute: (settings) {

      print(' ruta ${(settings.name)}');
      return MaterialPageRoute(builder: (BuildContext context) => AlertPage());
    },
      // ),
      // home: HomePage(),
    );
  }
}
